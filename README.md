<!-- Generated from private documentation source. Do not edit directly. Source SHA256: 02870e16814ffbaf5bbf06e154ce9e532678cfa7816dcb01905b66ef577fb910 -->

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

For contributor verification, prepare the pinned helper source before running native tasks:

```sh
git clone https://github.com/nicodes/tools.git .ci-tools
git -C .ci-tools checkout --detach f7e243524ce2aa29f299e4c79db33001f72f4a30
mise install
mise run check
```

Build commands record source and exact regular output hashes. Declared tests produce evidence from the current verification session in `.artifacts/verification`.
