// SPDX-FileCopyrightText: © 2025 XXX Authors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module chip_core #(
    parameter NUM_INPUT = 12,
    parameter NUM_BIDIR = 42
    )(
    input  logic clk,       // clock
    input  logic rst_n,     // reset (active low)
    
    input  wire [NUM_INPUT-1:0] input_in,   // Input value
    output wire [NUM_INPUT-1:0] input_pu,   // Pull-up
    output wire [NUM_INPUT-1:0] input_pd,   // Pull-down

    input  wire [NUM_BIDIR-1:0] bidir_in,   // Input value
    output wire [NUM_BIDIR-1:0] bidir_out,  // Output value
    output wire [NUM_BIDIR-1:0] bidir_oe,   // Output enable
    output wire [NUM_BIDIR-1:0] bidir_cs,   // Input type (0=CMOS Buffer, 1=Schmitt Trigger)
    output wire [NUM_BIDIR-1:0] bidir_sl,   // Slew rate (0=fast, 1=slow)
    output wire [NUM_BIDIR-1:0] bidir_ie,   // Input enable
    output wire [NUM_BIDIR-1:0] bidir_pu,   // Pull-up
    output wire [NUM_BIDIR-1:0] bidir_pd    // Pull-down
);

    // See here for usage: https://gf180mcu-pdk.readthedocs.io/en/latest/IPs/IO/gf180mcu_fd_io/digital.html
    
    // Disable pull-up and pull-down for input
    assign input_pu = '0;
    assign input_pd = '0;

    // Set the bidir as output
    assign bidir_oe = '1;
    assign bidir_cs = '0;
    assign bidir_sl = '0;
    assign bidir_ie = ~bidir_oe;
    assign bidir_pu = '0;
    assign bidir_pd = '0;

    logic [NUM_BIDIR-1:0] count;

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            count <= '0;
        end else begin
            if (&input_in) begin
                count <= count + 1;
            end
        end
    end
    
    assign bidir_out  = count;

endmodule

`default_nettype wire
