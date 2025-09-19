// SPDX-FileCopyrightText: © 2025 wafer.space
// SPDX-License-Identifier: Apache-2.0

module chip_top (
    `ifdef USE_POWER_PINS
    inout wire VDD,
    inout wire VSS,
    `endif

    inout  wire       ena_PAD,
    inout  wire       clk_PAD,
    inout  wire       rst_n_PAD,
    inout  wire [7:0] ui_PAD,
    inout  wire [7:0] uo_PAD,
    inout  wire [7:0] uio_PAD
);

    wire       ena_PAD2CORE;
    wire       clk_PAD2CORE;
    wire       rst_n_PAD2CORE;
    wire [7:0] ui_PAD2CORE;
    wire [7:0] uo_CORE2PAD;
    wire [7:0] uio_PAD2CORE;
    wire [7:0] uio_CORE2PAD;
    wire [7:0] uio_CORE2PAD_EN;

    // Power/Ground IO pad instances

    (* keep *)
    gf180mcu_fd_io__dvdd gf180mcu_fd_io__dvdd_south (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvss gf180mcu_fd_io__dvss_south (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvss gf180mcu_fd_io__dvss_south2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvdd gf180mcu_fd_io__dvdd_south2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd gf180mcu_ws_io__dvdd_east (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss gf180mcu_ws_io__dvss_east (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss gf180mcu_ws_io__dvss_east2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd gf180mcu_ws_io__dvdd_east2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd gf180mcu_ws_io__dvdd_west (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss gf180mcu_ws_io__dvss_west (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvss gf180mcu_ws_io__dvss_west2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_ws_io__dvdd gf180mcu_ws_io__dvdd_west2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvdd gf180mcu_fd_io__dvdd_north (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvss gf180mcu_fd_io__dvss_north (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvss gf180mcu_fd_io__dvss_north2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VDD    (VDD)
        `endif
    );

    (* keep *)
    gf180mcu_fd_io__dvdd gf180mcu_fd_io__dvdd_north2 (
        `ifdef USE_POWER_PINS
        	.DVDD   (VDD),
	    .DVSS   (VSS),
	    .VSS    (VSS)
        `endif
    );

    // Signal IO pad instances

    gf180mcu_fd_io__in_c gf180mcu_fd_io__in_c_ena (
        `ifdef USE_POWER_PINS
        .DVDD   (VDD),
        .DVSS   (VSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y (ena_PAD2CORE),
        .PAD (ena_PAD),
        
        .PU (1'b0),
        .PD (1'b0)
    );
    
    gf180mcu_fd_io__in_s gf180mcu_fd_io__in_s_clk (
        `ifdef USE_POWER_PINS
        .DVDD   (VDD),
        .DVSS   (VSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y (clk_PAD2CORE),
        .PAD (clk_PAD),
        
        .PU (1'b0),
        .PD (1'b0)
    );
    
    gf180mcu_fd_io__in_c gf180mcu_fd_io__in_c_rst_n (
        `ifdef USE_POWER_PINS
        .DVDD   (VDD),
        .DVSS   (VSS),
        .VDD    (VDD),
        .VSS    (VSS),
        `endif
    
        .Y (rst_n_PAD2CORE),
        .PAD (rst_n_PAD),
        
        .PU (1'b0),
        .PD (1'b0)
    );

    generate
    for (genvar i=0; i<8; i++) begin : gf180mcu_fd_io__in_c_ui
        gf180mcu_fd_io__in_c ui (
            `ifdef USE_POWER_PINS
            .DVDD   (VDD),
            .DVSS   (VSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
        
            .Y (ui_PAD2CORE[i]),
            .PAD (ui_PAD[i]),
            
            .PU (1'b0),
            .PD (1'b0)
        );
    end
    endgenerate

    wire [7:0] unused_y;

    generate
    for (genvar i=0; i<8; i++) begin : gf180mcu_fd_io__bi_24t_uo
        gf180mcu_fd_io__bi_24t uo (
            `ifdef USE_POWER_PINS
            .DVDD   (VDD),
            .DVSS   (VSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
        
            .A (uo_CORE2PAD[i]),
            .PAD (uo_PAD[i]),
            
            .OE (1'b1),
            .IE (1'b0),
            .Y  (unused_y[i]),

            .CS (1'b0), // cmos
            .SL (unused_y[i]), // TODO so dumb, just for now...

            .PU (1'b0),
            .PD (1'b0)
        );
    end
    endgenerate

    generate
    for (genvar i=0; i<8; i++) begin : gf180mcu_fd_io__bi_24t_uio
        gf180mcu_fd_io__bi_24t uio (
            `ifdef USE_POWER_PINS
            .DVDD   (VDD),
            .DVSS   (VSS),
            .VDD    (VDD),
            .VSS    (VSS),
            `endif
        
            .A      (uio_CORE2PAD[i]),
            .OE     (uio_CORE2PAD_EN[i]),
            .Y      (uio_PAD2CORE[i]),
            .PAD    (uio_PAD[i]),
            
            .CS (1'b0), // cmos
            .SL (1'b0), // fast
            .IE (!uio_CORE2PAD_EN[i]),

            .PU (1'b0),
            .PD (1'b0)
        );
    end
    endgenerate

    // Core design

    (* keep *) chip_core i_chip_core (
        .ui_in      (ui_PAD2CORE),
        .uo_out     (uo_CORE2PAD),
        .uio_in     (uio_PAD2CORE),
        .uio_out    (uio_CORE2PAD),
        .uio_oe     (uio_CORE2PAD_EN),
        .ena        (ena_PAD2CORE),
        .clk        (clk_PAD2CORE),
        .rst_n      (rst_n_PAD2CORE)
    );

endmodule
