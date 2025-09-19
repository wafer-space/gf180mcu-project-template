// SPDX-FileCopyrightText: © 2025 XXX Authors
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module chip_core #(
    parameter NUM_INPUT = 12,
    parameter NUM_BIDIR = 42
    )(
    input  logic clk,       // clock
    input  logic rst_n,     // reset (active low)
    
    input  wire [NUM_INPUT-1:0] input_in,    // Dedicated inputs
    output wire [NUM_INPUT-1:0] input_pu,
    output wire [NUM_INPUT-1:0] input_pd,

    input  wire [NUM_BIDIR-1:0] bidir_in,   // IOs: Input path
    output wire [NUM_BIDIR-1:0] bidir_out,  // IOs: Output path
    output wire [NUM_BIDIR-1:0] bidir_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    output wire [NUM_BIDIR-1:0] bidir_cs,
    output wire [NUM_BIDIR-1:0] bidir_sl,
    output wire [NUM_BIDIR-1:0] bidir_ie,
    output wire [NUM_BIDIR-1:0] bidir_pu,
    output wire [NUM_BIDIR-1:0] bidir_pd
);

    assign input_pu = '0;
    assign input_pd = '0;

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
