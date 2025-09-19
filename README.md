# gf180mcu Project Template

Project template for wafer.space MPW runs using the gf180mcu PDK

> [!CAUTION]
> This repository is still WIP.

## Prerequisites

For now we use a custom repository for the PDK until all changes are upstreamed.

Simply run `make clone-pdk` to clone the correct PDK version.

Next, install LibreLane by following the Nix based installation instructions: https://librelane.readthedocs.io/en/latest/getting_started/common/nix_installation/index.html

## Implement the Design

This repository contains a Nix Flake that enables a shell with the [`leo/gf180mcu`](https://github.com/librelane/librelane/tree/leo/gf180mcu) branch of LibreLane.

Simply run `nix-shell` in the root of this repository.

> [!INFO]
> Since we are working on a branch of LibreLane, OpenROAD needs to be compiled locally. This will be done automatically by Nix and the binary is cached locally. 

With this shell run the implementation:

```
make librelane
```

## View the Design

After completion you can view the design with OpenROAD GUI:

```
make librelane-openroad
```

Or using KLayout:

```
make librelane-klayout
```

# Copying the Design

Top copy your last run to `final/` in the root directory of the repository, run:

```
make copy-final
```

This will only work if the last run completed without errors.
