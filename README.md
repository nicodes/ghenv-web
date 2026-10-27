<!-- Generated from private documentation source. Do not edit directly. Source SHA256: 8985a78a634d6ee980a48b7c2760fd263f51950aed74aa3b3cce2714f59b5a89 -->

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

```sh
curl -fsSL https://ghenv.dev/install | sh
```

Prebuilt Linux/macOS binaries are available for x86_64 and arm64. A Go compiler is not required. See [ghenv](https://github.com/nicodes/ghenv#readme) for setup and installation options.
