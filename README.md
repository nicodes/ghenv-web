<!-- Generated from private documentation source. Do not edit directly. Source SHA256: bb2cfb9f548b28cfd45e68302035e0b4d71f61c3df19ce6786d0dbeff99109a1 -->

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
git -C .ci-tools checkout --detach 091101094fedf5ce2e67c339c1c9c842d6a662dc
mise install
mise run check
```

Build commands record source and exact regular output hashes. Declared tests produce evidence from the current verification session in `.artifacts/verification`.

`mise run dev` owns the checkout’s foreground process tree. Dependency preparation and the application use an isolated local environment through the pinned optional ghenv CLI; no account is needed. Startup refuses changes to the native task policy during preparation. `mise run stop` stops only that checkout, and `mise run clean` refuses cleanup while its session is active.
