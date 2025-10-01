# gf180mcu Project Template

Project template for wafer.space MPW runs using the gf180mcu PDK.

> [!CAUTION]
> This repository is still WIP.

## Prerequisites

For now we use a custom repository for the PDK until all changes are upstreamed.

Simply run `make clone-pdk` to clone the correct PDK version.

Next, install LibreLane by following the Nix based installation instructions: https://librelane.readthedocs.io/en/latest/getting_started/common/nix_installation/index.html

## Implement the Design

This repository contains a Nix Flake that provides a shell with the [`leo/gf180mcu`](https://github.com/librelane/librelane/tree/leo/gf180mcu) branch of LibreLane.

Simply run `nix-shell` in the root of this repository.

> [!NOTE]
> Since we are working on a branch of LibreLane, OpenROAD needs to be compiled locally. This will be done automatically by Nix, and the binary will be cached locally. 

With this shell enabled, run the implementation:

```
make librelane
```

> [!NOTE]
> For more comprehensive SystemVerilog support, enable the USE_SLANG variable in the LibreLane configuration.

## View the Design

After completion, you can view the design uisng the OpenROAD GUI:

```
make librelane-openroad
```

Or using KLayout:

```
make librelane-klayout
```

## Copying the Design to the Final Folder

To copy your latest run to the `final/` folder in the root directory of the repository, run the following command:

```
make copy-final
```

This will only work if the last run was completed without errors.

## Verification and Simulation

We use [cocotb](https://www.cocotb.org/), a Python-based testbench environment, for the verification of the chip.
The underlying simulator is Icarus Verilog (https://github.com/steveicarus/iverilog).

The testbench is located in `cocotb/chip_top_tb.py`. To run the RTL simulation, simply call the testbench:

```
python3 chip_top_tb.py
```

or

```
make sim
```

To run the GL (gate-level) simulation, set the GL environment variable:

```
GL=1 python3 chip_top_tb.py
```

or

```
make sim-gl
```

> [!NOTE]
> You need to have the latest implementation of your design in the `final/` folder. After implementing the design, execute 'make copy-final' to copy all necessary files.

In both cases, a waveform file will be generated under `cocotb/sim_build/chip_top.fst`.
You can view it using a waveform viewer, for example, [GTKWave](https://gtkwave.github.io/gtkwave/).

```
gtkwave cocotb/sim_build/chip_top.fst
```

or

```
make sim-view
```

You can now update the testbench according to your design.

## Precheck

To check whether your design is suitable for manufacturing, run the [gf180mcu-precheck](https://github.com/wafer-space/gf180mcu-precheck) with your layout.
