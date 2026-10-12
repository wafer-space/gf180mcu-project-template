# gf180mcu Project Template

Project template for wafer.space MPW runs using the gf180mcu PDK.

## Dependencies

Too manage all dependencies, the project template includes a Nix shell with all the required tools.
Install Nix and LibreLane by following the Nix-based installation instructions: https://librelane.readthedocs.io/en/latest/installation/nix_installation/index.html
To activate the shell, simply run `nix-shell` in the root directory of this repository. The subsequent steps assume that you are in the Nix shell of the project template.

## Prerequisites

The project template uses the open_pdks gf180mcuD variant of the PDK.
To clone the latest PDK version via [Ciel](https://github.com/fossi-foundation/ciel), run `make clone-pdk`.

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

The source files for this template can be found in the `src/` directory. `chip_top.sv` defines the top-level ports and instantiates `chip_core`, chip ID (QR code) and the wafer.space logo. To allow for the default bonding setup, do not change the number of pads in order to keep the original bondpad positions. To be compatible with the default breakout PCB, do not change any of the power or ground pads. However, you can change the type of the signal pads, e.g. to bidirectional, input-only or e.g. analog pads. The template provides the `NUM_INPUT` and `NUM_BIDIR` parameters for this purpose.

The actual pad positions are defined in the LibreLane configuration file under `librelane/config.yaml`. The variables `PAD_SOUTH`/`PAD_EAST`/`PAD_NORTH`/`PAD_WEST` determine the respective pad placement. The LibreLane configuration also allows you to customize the flow (enable or disable steps), specify the source files, set various variables for the steps, and instantiate macros. For more information about the configuration, please refer to the LibreLane documentation: https://librelane.readthedocs.io/en/latest/

To implement your own design, simply edit `chip_core.sv`. The `chip_core` module receives the clock and reset, as well as the signals from the pads defined in `chip_top`. As an example, a 42-bit wide counter is implemented.

> [!NOTE]
> This project enables `USE_SLANG` (with `--single-unit`, so the macros defined in `chip_top.sv` are visible in the other files) in the LibreLane configuration. If the slang frontend causes problems, comment out `USE_SLANG` and `SLANG_ARGUMENTS` in `librelane/config.yaml` to return to the default parser.

The design itself lives in `src/design/` so that the same RTL can also run on an FPGA, see [Running the Design on an FPGA](#running-the-design-on-an-fpga). `chip_core.sv` is then only the ASIC wrapper (pads, pad controls, SRAM macros) around `design_core`.

## Running the Design on an FPGA

The same RTL can be built for an FPGA, so the design can be checked on hardware before tape-out. The FPGA flow is set up for the ULX3S-85F (Lattice ECP5) using the open-source tools yosys (with the slang plugin), nextpnr-ecp5, ecppack and openFPGALoader.

### Layout

```
src/chip_core.sv      ASIC wrapper: pads, pad controls, SRAM macros     -> design_core
src/design/*.sv       SHARED design RTL (no pads, no board pins, no macros)
fpga/fpga_top.sv      FPGA wrapper: board clock, reset, LEDs, pins      -> design_core
fpga/boards/*.lpf     pin file for the board
fpga/Makefile         FPGA build
```

Put the design in `src/design/`. Every `.sv` file there is picked up automatically by the LibreLane flow, the cocotb simulation and the FPGA build, so adding a file needs no list to be updated. Keep `src/design/` flat (no subfolders) because the LibreLane configuration uses the pattern `src/design/*.sv`. Files meant only for `` `include `` should use the `.svh` extension. Includes are relative to `src/`.

Keep everything target-specific out of `src/design/`: no pad cells, no SRAM macros and no board pins. Those belong in `chip_core.sv` and `fpga/fpga_top.sv`. The FPGA build defines `FPGA`, so `` `ifdef FPGA `` can be used where a difference is unavoidable (for example a memory wrapper using inferred RAM on the FPGA and the gf180mcu SRAM macro on the chip).

`design_core` takes `clk` and an active-low `rst_n`, like `chip_core`. `fpga_top` creates `rst_n` from a power-on reset and button 1 (FIRE1).

### Prerequisites

- An [oss-cad-suite](https://github.com/YosysHQ/oss-cad-suite-build/releases) install (it provides yosys with slang, nextpnr-ecp5, ecppack and openFPGALoader).
  The Makefile looks for it in `~/Projects/fpga/oss-cad-suite`. Use `OSS=/path/to/oss-cad-suite` for a different location.
- A ULX3S board connected over USB.

### Build and program

```
make -C fpga          # build fpga/build/fpga_top.bit
make -C fpga prog     # program the board (volatile, lost at power-off)
make -C fpga flash    # write the bitstream to the board's flash
make -C fpga clean
```

The placeholder design is a counter that is shown on the 8 LEDs.

### Using the FPGA flow with your own design

1. Replace `src/design/design_core.sv` with your design (and add any other `.sv` files to `src/design/`).
2. Edit `fpga/fpga_top.sv` to connect the design's ports to the board. Board pins are defined in `fpga/boards/ulx3s.lpf`, which is the full ULX3S pin file. Any top-level port of `fpga_top` needs a matching pin name in that file.
3. Edit `src/chip_core.sv` to connect the design's ports to the chip pads.
4. Update `cocotb/chip_top_tb.py` for your design and run `make sim`.

If the design is too slow for the board's 25 MHz clock, nextpnr reports it (`Max frequency ... FAIL`) in `fpga/build/nextpnr.log`. A PLL can then be added in `fpga_top.sv`.

### Other boards

Add `fpga/boards/<name>.lpf` (or the pin file format for that FPGA family) and a new branch in the board table at the top of `fpga/Makefile` (nextpnr device and package, programmer board name and clock frequency), then build with `make -C fpga BOARD=<name>`. A board from another FPGA family also needs a different synthesis and place-and-route flow in that Makefile.

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

## Select Different IP Libraries

The project template has support for selecting libraries with the below environment variables:

| Env  | Available Values                                                          | Description                |
|------|---------------------------------------------------------------------------|----------------------------|
| SCL  | gf180mcu_fd_sc_mcu7t5v0, gf180mcu_fd_sc_mcu9t5v0, gf180mcu_as_sc_mcu7t3v3 | The standard cell library. |
| PAD  | gf180mcu_fd_io, gf180mcu_ocd_io                                           | The I/O pad library.       |
| SRAM | gf180mcu_fd_ip_sram, gf180mcu_ocd_ip_sram                                 | The SRAM library.          |

For example, to build the 0p5x0p5 chip with 3v3 libraries:

```
SLOT=0p5x0p5 SCL=gf180mcu_as_sc_mcu7t3v3 PAD=gf180mcu_ocd_io SRAM=gf180mcu_ocd_ip_sram make librelane
```

The default values can be changed in the Makefile.

> [!NOTE]
> Not all of the community-created IPs have been tested yet, so support for them is experimental!

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
