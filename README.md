<!-- Generated from private documentation source. Do not edit directly. Source SHA256: 8a8ceb07bb15657f38a954d12beaff4d8a365ac862a32d1bfd7bca0260373d50 -->

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

Requires Go. See [ghenv](https://github.com/nicodes/ghenv#readme) for setup and installation options.
