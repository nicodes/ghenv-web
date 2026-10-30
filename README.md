<!-- Generated from private documentation source. Do not edit directly. Source SHA256: ae2c4ffe629211897cde739009bc51ac82c0f6c84944854dcd4a8c97a4c0dfa2 -->

# ghenv website

Static usage site for [ghenv](https://github.com/nicodes/ghenv).

Install the [komizo release](https://github.com/nicodes/komizo#install) matching `komizo.lock`.

```sh
komizo dev          # Foreground development server
komizo check        # Source, type, build and static output checks
komizo run build    # Generate dist/
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
