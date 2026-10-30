<!-- Generated from private documentation source. Do not edit directly. Source SHA256: 4a2143afd2325690c0fa294d332ebaeb3cd6ce4379ef7db1b3add898b7814a79 -->

# ghenv website

Static usage site for [ghenv](https://github.com/nicodes/ghenv).

Install [mise](https://mise.jdx.dev/) and run `mise install`.

```sh
mise run dev          # Development server
mise run check        # Source, type, build and static output checks
mise run build    # Generate dist/
```

Ctrl-C stops development. No runtime credentials or credential `.env` file is required.

## Install the CLI

With curl:

```sh
curl -fsSL https://ghenv.dev/install | sh
```

Or with mise:

```sh
mise use --global github:nicodes/ghenv@latest
```

An icon-only copy control sits on the right inside each install-command outline and shows a checkmark after copying. If clipboard access is unavailable, the command remains selectable for manual copying.

Prebuilt Linux/macOS binaries are available for x86_64 and arm64. A Go compiler is not required. See [ghenv](https://github.com/nicodes/ghenv#readme) for setup and installation options.
