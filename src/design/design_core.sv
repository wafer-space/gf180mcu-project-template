// SPDX-License-Identifier: Apache-2.0
//
// design_core: the design shared by the ASIC and the FPGA.
//
// Rules for everything under src/design/:
//   - no pads, no SRAM macros, no board pins (those live in the wrappers)
//   - only clk and active-low rst_n for clocking/reset
//   - every *.sv in this folder is picked up automatically by the chip flow
//     (librelane/config.yaml), the simulation (cocotb) and the FPGA flow
//     (fpga/Makefile).  *.svh files are for `include only.
//
// Placeholder design: a counter that advances while `enable` is high.

`default_nettype none

module design_core #(
    parameter WIDTH = 40
) (
    input  wire             clk,
    input  wire             rst_n,    // active low

    input  wire             enable,
    output logic [WIDTH-1:0] count
);

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            count <= '0;
        end else if (enable) begin
            count <= count + 1'b1;
        end
    end

endmodule

`default_nettype wire
