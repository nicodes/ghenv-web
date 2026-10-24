# ghenv website

Static Astro landing page at [ghenv.dev](https://ghenv.dev) for [ghenv](https://github.com/nicodes/ghenv) and
[ghenv-actions](https://github.com/nicodes/ghenv-actions). It introduces the
Preview credential handoff, installation, and supported workflow examples.
The handoff illustration uses example names and does not connect to GitHub.

## Development

Use `mise install` for the pinned Bun toolchain, then:

```sh
mise exec -- make check  # frozen install, lint, type check, build, output checks
mise exec -- make dev    # foreground development server; stop with Ctrl-C
mise exec -- bun run preview
```

`make test` checks an existing build. `make clean` removes generated output.
The static build is emitted to `dist/` and ships no client JavaScript.
CI uses the same Make targets; deployment is handled separately by the host,
as in the other `-web` repositories. No credentials are needed to build the site.

Vercel build settings: `bun run build`, output directory `dist`. The production
domain is `ghenv.dev`, configured in Astro for canonical and social URL metadata.
