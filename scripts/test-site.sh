#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from html.parser import HTMLParser
from pathlib import Path
import json

class Page(HTMLParser):
    def __init__(self):
        super().__init__()
        self.tags = []
        self.ids = []
        self.pre = []
        self.in_pre = False

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        self.tags.append((tag, attrs))
        if 'id' in attrs:
            self.ids.append(attrs['id'])
        if tag == 'pre':
            self.in_pre = True
            self.pre.append('')

    def handle_endtag(self, tag):
        if tag == 'pre':
            self.in_pre = False

    def handle_data(self, data):
        if self.in_pre:
            self.pre[-1] += data

root = Path('dist')
html = (root / 'index.html').read_text()
assert html.strip(), 'Missing landing page'
page = Page()
page.feed(html)
assert len(page.ids) == len(set(page.ids)), 'Duplicate element IDs'
assert sum(tag == 'h1' for tag, _ in page.tags) == 1, 'Expected one primary heading'
assert any(tag == 'main' for tag, _ in page.tags), 'Missing main landmark'
assert not any(tag in {'form', 'input', 'iframe'} for tag, _ in page.tags), 'Site must not collect credentials or embed apps'
links = [attrs['href'] for tag, attrs in page.tags if tag == 'a']
for href in links:
    if href.startswith('#'):
        assert href[1:] in page.ids, f'Broken section link: {href}'
    else:
        assert href == '/' or href.startswith('https://'), f'Unexpected link: {href}'
for destination in [
    'https://github.com/nicodes/ghenv',
    'https://github.com/nicodes/ghenv#readme',
    'https://github.com/nicodes/ghenv-actions',
    'https://github.com/nicodes/ghenv-actions/blob/main/examples/ghenv.yml',
    'https://github.com/nicodes/ghenv-actions/blob/main/examples/ghenv-existing-preview.yml',
    'https://github.com/nicodes/ghenv-actions/blob/main/examples/ghenv-repository-bundle.yml',
]:
    assert destination in links, f'Missing product destination: {destination}'
assert any(tag == 'link' and attrs.get('rel') == 'canonical' and attrs.get('href') == 'https://ghenv.dev/' for tag, attrs in page.tags), 'Wrong production canonical'
assert any(tag == 'meta' and attrs.get('property') == 'og:url' and attrs.get('content') == 'https://ghenv.dev/' for tag, attrs in page.tags), 'Wrong social URL'
assert any(tag == 'meta' and attrs.get('name') == 'description' and attrs.get('content') for tag, attrs in page.tags), 'Missing description'
assert not list(root.rglob('*.js')), 'Static site must ship no JavaScript files'
for tag, attrs in page.tags:
    if tag == 'script':
        assert attrs.get('type') == 'application/ld+json' and 'src' not in attrs, 'Executable client script found'
for path in ['favicon.svg', 'robots.txt']:
    assert (root / path).is_file(), f'Missing public asset: {path}'
command = '\n'.join([
    'ghenv run --clean-env \\',
    '  --repo OWNER/PROJECT \\',
    '  --secrets API_KEY \\',
    '  --vars API_BASE_URL \\',
    '  -- npm run dev',
])
assert page.pre.count(command) == 2, 'Handoff and setup must show the same usable command'
assert 'ghenv local -- npm run dev' in page.pre, 'Missing credential-free local example'
assert any('go install github.com/nicodes/ghenv@latest' in block for block in page.pre), 'Missing install command'
print('Static output checks passed: product links, commands, section anchors, metadata, and no client JavaScript.')
PY
