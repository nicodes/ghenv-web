<!-- Generated from private documentation source. Do not edit directly. Source SHA256: 3d43fb65b9568678fff364e60fa6b8591b57bbe363c266fc1279c207a5bae717 -->

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

Each install command has a Copy button with confirmation. If clipboard access is unavailable, the command remains selectable for manual copying.

Prebuilt Linux/macOS binaries are available for x86_64 and arm64. A Go compiler is not required. See [ghenv](https://github.com/nicodes/ghenv#readme) for setup and installation options.
