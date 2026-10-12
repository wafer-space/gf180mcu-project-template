# ASIC + FPGA workflow

One design, two targets. The design RTL is shared; each target only has a thin wrapper.

```
src/chip_top.sv, slot_defines.svh   upstream wafer.space files, do not edit
src/chip_core.sv                    ASIC wrapper: pads, pad controls, SRAM macros  -> design_core
src/design/*.sv                     SHARED design RTL (no pads, no board pins, no macros)
fpga/fpga_top.sv                    FPGA wrapper: board clock/reset/LEDs/pins      -> design_core
fpga/boards/<board>.lpf             board pin file
fpga/Makefile                       yosys+slang -> nextpnr -> ecppack -> openFPGALoader
```

## Starting a project
1. Put the design in `src/design/` (any number of `.sv` files, `.svh` for includes).
   Every `.sv` there is picked up automatically by:
   - LibreLane (`librelane/config.yaml`: `dir::../src/design/*.sv`, flat folder only)
   - cocotb (`cocotb/chip_top_tb.py`: recursive glob)
   - the FPGA flow (`fpga/Makefile`: recursive `find`)
   Use a flat `src/design/` unless you also change the LibreLane glob.
   Includes are rooted at `src/` (`` `include "design/foo.svh" ``).
2. Wire `src/chip_core.sv` (pads) and `fpga/fpga_top.sv` (board pins) to the top of the design.
3. Update `cocotb/chip_top_tb.py` for the new behaviour.

## Commands
- `make sim` (ASIC repo root): RTL simulation with cocotb.
- `make librelane`: chip flow (uses slang: `USE_SLANG: True`).
- `make -C fpga` / `make -C fpga prog`: build / program the ULX3S.
  Set `OSS=/path/to/oss-cad-suite` if it is not in `~/Projects/fpga/oss-cad-suite`.
  Other boards: add `fpga/boards/<name>.lpf` and a branch in the board table of `fpga/Makefile`.

## Rules
- Nothing target-specific in `src/design/`. The FPGA flow defines `FPGA`
  (`` `ifdef FPGA ``) for the rare case where a target switch is unavoidable, e.g. a memory
  wrapper: inferred RAM for FPGA, gf180 SRAM macro for the chip.
- `design_core` clocking/reset: `clk` and active-low `rst_n`, as in `chip_core`.
- Do not edit upstream-owned files (`chip_top.sv`, `Makefile`, `flake.*`, `ip/`, `librelane/{slots,macros,pdn}`,
  `scripts/`). Template edits are limited to `chip_core.sv`, `librelane/config.yaml`, `cocotb/chip_top_tb.py`, `.gitignore`.
