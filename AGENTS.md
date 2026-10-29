# Repository instructions

This is a static Astro landing page. Keep product claims and command examples
verified against the current `nicodes/ghenv` and `nicodes/ghenv-actions` source.
Public usage belongs in README.md; private documentation belongs in `nicodes/docs`.

Read the exact versioned docs before writing code:

- TypeScript 6: https://www.typescriptlang.org/docs/handbook/release-notes/typescript-6-0.html
- Astro 7: https://docs.astro.build/en/guides/upgrade-to/v7/

Use `komizo check` for the complete validation gate. Preserve the static output:
only the install-command clipboard module may execute in the browser. Do not add analytics, credential inputs, or live GitHub requests.
