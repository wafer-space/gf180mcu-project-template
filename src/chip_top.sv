// SPDX-FileCopyrightText: © 2025 wafer.space
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module chip_top #(
    parameter NUM_INPUT = 12,
    parameter NUM_BIDIR = 42
    )(
    `ifdef USE_POWER_PINS
    inout wire VDD,
    inout wire VSS,
    `endif

    inout  wire       clk_PAD,
    inout  wire       rst_n_PAD,
    
    inout  wire [NUM_INPUT-1:0] input_PAD,
    inout  wire [NUM_BIDIR-1:0] bidir_PAD
);

    wire clk_PAD2CORE;
    wire rst_n_PAD2CORE;
    
    wire [NUM_INPUT-1:0] input_PAD2CORE;
    wire [NUM_INPUT-1:0] input_CORE2PAD_PU;
    wire [NUM_INPUT-1:0] input_CORE2PAD_PD;

    wire [NUM_BIDIR-1:0] bidir_PAD2CORE;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_OE;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_CS;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_SL;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_IE;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_PU;
    wire [NUM_BIDIR-1:0] bidir_CORE2PAD_PD;

    // Power / ground IO pad instances

    // South
    (* keep *)
    gf180mcu_fd_io__dvss dvss_south_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    // East
    (* keep *)
    gf180mcu_ws_io__dvss dvss_east_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );
    
    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_east_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss dvss_east_1 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_east_1 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );
    
   (* keep *)
    gf180mcu_ws_io__dvss dvss_east_2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_east_2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );
    
    (* keep *)
    gf180mcu_ws_io__dvss dvss_east_3 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_east_3 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );
    
    // North
    (* keep *)
    gf180mcu_fd_io__dvss dvss_north_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );
    
    // West
    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_west_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss dvss_west_0 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_west_1 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss dvss_west_1 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss dvss_west_2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_west_2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );
    
    (* keep *)
    gf180mcu_ws_io__dvss dvss_west_3 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd dvdd_west_3 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    // Signal IO pad instances

    // Schmitt trigger
    gf180mcu_fd_io__in_s clk_pad (
        `ifdef USE_POWER_PINS
        .DVDD   (VDD),
        .DVSS   (VSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (clk_PAD2CORE),
        .PAD    (clk_PAD),
        
        .PU     (1'b0),
        .PD     (1'b0)
    );
    
    // Normal input
    gf180mcu_fd_io__in_c rst_n_pad (
        `ifdef USE_POWER_PINS
        .DVDD   (VDD),
        .DVSS   (VSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y      (rst_n_PAD2CORE),
        .PAD    (rst_n_PAD),
        
        .PU     (1'b0),
        .PD     (1'b0)
    );

    generate
    for (genvar i=0; i<NUM_INPUT; i++) begin : inputs
        gf180mcu_fd_io__in_c pad (
            `ifdef USE_POWER_PINS
            .DVDD   (VDD),
            .DVSS   (VSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
        
            .Y      (input_PAD2CORE[i]),
            .PAD    (input_PAD[i]),
            
            .PU     (input_CORE2PAD_PU[i]),
            .PD     (input_CORE2PAD_PD[i])
        );
    end
    endgenerate

    generate
    for (genvar i=0; i<NUM_BIDIR; i++) begin : bidir
        gf180mcu_fd_io__bi_24t pad (
            `ifdef USE_POWER_PINS
            .DVDD   (VDD),
            .DVSS   (VSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
        
            .A      (bidir_CORE2PAD[i]),
            .OE     (bidir_CORE2PAD_OE[i]),
            .Y      (bidir_PAD2CORE[i]),
            .PAD    (bidir_PAD[i]),
            
            .CS     (bidir_CORE2PAD_CS[i]),
            .SL     (bidir_CORE2PAD_SL[i]),
            .IE     (bidir_CORE2PAD_IE[i]),

            .PU     (bidir_CORE2PAD_PU[i]),
            .PD     (bidir_CORE2PAD_PD[i])
        );
    end
    endgenerate

    // Core design

    (* keep *) chip_core #(
        .NUM_INPUT  (NUM_INPUT),
        .NUM_BIDIR  (NUM_BIDIR)
    ) i_chip_core (
        .clk        (clk_PAD2CORE),
        .rst_n      (rst_n_PAD2CORE),
    
        .input_in   (input_PAD2CORE),
        .input_pu   (input_CORE2PAD_PU),
        .input_pd   (input_CORE2PAD_PD),

        .bidir_in   (bidir_PAD2CORE),
        .bidir_out  (bidir_CORE2PAD),
        .bidir_oe   (bidir_CORE2PAD_OE),
        .bidir_cs   (bidir_CORE2PAD_CS),
        .bidir_sl   (bidir_CORE2PAD_SL),
        .bidir_ie   (bidir_CORE2PAD_IE),
        .bidir_pu   (bidir_CORE2PAD_PU),
        .bidir_pd   (bidir_CORE2PAD_PD)
    );
    
    // Die ID - do not remove, necessary for tapeout
    (* keep *)
    gf180mcu_ws_ip__id die_id ();

endmodule

`default_nettype wire
