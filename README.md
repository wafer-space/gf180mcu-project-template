# gf180mcu Project Template

Project template for wafer.space MPW runs using the gf180mcu PDK.

## Dependencies

Too manage all dependencies, the project template includes a Nix shell with all the required tools.
Install Nix and LibreLane by following the Nix-based installation instructions: https://librelane.readthedocs.io/en/latest/installation/nix_installation/index.html
To activate the shell, simply run `nix-shell` in the root directory of this repository. The subsequent steps assume that you are in the Nix shell of the project template.

## Prerequisites

The project template uses the open-pdks gf180mcuD variant of the PDK.
To clone the latest compatible PDK version via [Ciel](https://github.com/fossi-foundation/ciel), run `make clone-pdk`.

## Implement the Design

With the Nix shell enabled, run the implementation:

```
make librelane
```

You can find all output artifacts in the `librelane/runs/<timestamp>/` directory.

## View the Design

After completion, you can view the design using the OpenROAD GUI:

```
make librelane-openroad
```

Or using KLayout:

```
make librelane-klayout
```

## Verification and Simulation

For the verification of the chip we use [cocotb](https://www.cocotb.org/). Cocotb is a Python-based testbench environment. The simulator that is used by the project template is [Icarus Verilog](https://github.com/steveicarus/iverilog).

The testbench is located in `cocotb/chip_top_tb.py`. To run the RTL simulation, run the following command:

```
make sim
```

To run the GL (gate-level) simulation, run the following command:

```
make sim-gl
```

> [!NOTE]
> You need to have the latest implementation of your design in the `final/` folder. After a run has completed without errors, the final views will be copied to `final/`.

In both cases, a waveform file will be generated under `cocotb/sim_build/chip_top.fst`.
You can view it using a waveform viewer, for example, [GTKWave](https://gtkwave.github.io/gtkwave/).

```
make sim-view
```

You can now update the testbench according to your design.

## Implementing Your Own Design

The source files for this template can be found in the `src/` directory. `chip_top.sv` defines the top-level ports and instantiates `chip_core`, the chip ID (QR code), the marker, and the wafer.space logo. To comply with the default bonding setup, do not change the number of pads in order to keep the original bondpad positions. To ensure compatibility with the default breakout PCB, do not change any of the power or ground pads. However, you can change the type of the signal pads, e.g. to bidirectional, input-only, or analog pads. The template provides the `NUM_INPUT_PADS`, `NUM_BIDIR_PADS`, and `NUM_ANALOG_PADS` parameters for this purpose.

The actual pad positions are defined in the LibreLane configuration file under `librelane/slots/<slot>.yaml`. The variables `PAD_SOUTH`/`PAD_EAST`/`PAD_NORTH`/`PAD_WEST` determine the respective pad placement. The LibreLane configuration also allows you to customize the flow (enable or disable steps), specify the source files, set various variables for the steps, and instantiate macros. For more information about the configuration, please refer to the LibreLane documentation: https://librelane.readthedocs.io/en/latest/

To implement your own design, simply edit `chip_core.sv`. The `chip_core` module receives the clock and reset, as well as the signals from the pads defined in `chip_top`. As an example, a 42-bit wide counter is implemented.

> [!NOTE]
> For more comprehensive SystemVerilog support, enable the `USE_SLANG` variable in the LibreLane configuration.

## Choosing a Different Slot Size

The template supports the following slot sizes: `1x1`, `0p5x1`, `1x0p5`, `0p5x0p5`.
By default, the design is implemented using the `1x1` slot definition.

To select a different slot size, simply set the `SLOT` environment variable.
This can be done when invoking a make target:

```
SLOT=0p5x0p5 make librelane
```

Alternatively, you can export the slot size:

```
export SLOT=0p5x0p5
```

You can change the slot that is selected by default in the Makefile by editing the value of `DEFAULT_SLOT`.

## Selecting Different IP Libraries

The project template has support for selecting libraries with the `SCL`, `PAD`, and `SRAM` environment variables. For possible values, see the sections below.

For example, to build the 0p5x0p5 chip with 3v3 libraries:

```
SLOT=0p5x0p5 SCL=gf180mcu_as_sc_mcu7t3v3 PAD=gf180mcu_ocd_io SRAM=gf180mcu_ocd_ip_sram make librelane
```

The default values can be changed in the Makefile.

> [!NOTE]
> Not all of the community-created IPs have been tested yet, so support for them is experimental!
> wafer.space is not responsible for any IP that you use on your chip.

### SCL - Standard Cell Libraries

| IP                       | Provider  | Voltage    | Status           | Notes                    |
|--------------------------|-----------|------------|------------------|--------------------------|
| gf180mcu_fd_sc_mcu7t5v0  | foundry   | 5V or 3.3V | silicon-verified | slow option, dense layout |
| gf180mcu_fd_sc_mcu9t5v0  | foundry   | 5V or 3.3V | silicon-verified | faster than 7t variant, uses more area |
| gf180mcu_as_sc_mcu7t3v3  | community | 3.3V       | simulation-only  | fastest available option |
| gf180mcu_ocd_sc_rt12t3v3 | community | 3.3V       | simulation-only  | radiation-tolerant       |

### PAD - I/O Pad Libraries

| IP                       | Provider  | Voltage    | Status           | Notes                    |
|--------------------------|-----------|------------|------------------|--------------------------|
| gf180mcu_fd_io           | foundry   | 5V or 3.3V | silicon-verified | connects IO and core power domains together |
| gf180mcu_ocd_io          | community | 5V or 3.3V | silicon-verified | keeps IO and core power domains separate, e.g. IO at 5V and core at 3.3V (DVDD >= VDD) |

### SRAM - SRAM Libraries

| IP                       | Provider  | Voltage    | Status           | Notes                    |
|--------------------------|-----------|------------|------------------|--------------------------|
| gf180mcu_fd_ip_sram      | foundry   | 5V or 3.3V | silicon-verified | 128, 256 and 512 bytes   |
| gf180mcu_ocd_ip_sram     | community | 3.3V       | partially silicon-verified | smaller area, 64, 128, 256, 512 and 1024 bytes |

## Building a Standalone Padring for Analog Design

To build just the padring without any standard cell rows, digital routing or filler cells, run the following command:

```
make librelane-padring
```

It is also possible to build the padring for other slot sizes:

```
SLOT=0p5x0p5 make librelane-padring
```

## Precheck

To check whether your design is suitable for manufacturing, run the [gf180mcu-precheck](https://github.com/wafer-space/gf180mcu-precheck) with your layout.
