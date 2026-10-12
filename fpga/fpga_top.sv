// SPDX-License-Identifier: Apache-2.0
//
// fpga_top: FPGA wrapper around the shared design (src/design/design_core.sv).
// Counterpart of src/chip_core.sv for the ASIC.  Board pins, reset button and
// LEDs live here, never in src/design/.
//
// Board: ULX3S (see boards/ulx3s.lpf).  BTN1 (FIRE1) = reset.
// Placeholder wiring: the design's counter is shown on the 8 LEDs.

`default_nettype none

module fpga_top (
    input  wire       clk_25mhz,
    input  wire [1:0] btn,        // btn[1] = reset (active high)
    output wire [7:0] led
);

    // Power-on reset plus button; design_core wants active-low rst_n.
    logic [3:0] por = 4'd0;
    always_ff @(posedge clk_25mhz)
        if (por != 4'hF) por <= por + 1'b1;
    wire rst_n = (por == 4'hF) & ~btn[1];

    localparam WIDTH = 40;
    logic [WIDTH-1:0] count;

    design_core #(
        .WIDTH (WIDTH)
    ) i_design_core (
        .clk    (clk_25mhz),
        .rst_n  (rst_n),
        .enable (1'b1),
        .count  (count)
    );

    // 25 MHz / 2^21 ~ 12 Hz on led[0]; the upper LEDs count slower.
    assign led = count[28:21];

endmodule

`default_nettype wire
