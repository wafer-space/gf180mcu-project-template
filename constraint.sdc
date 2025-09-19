current_design gf_template_top
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA

# Set a higher limits than in lib
set_max_fanout 8 [current_design]
set_max_capacitance 0.5 [current_design]
set_max_transition 3 [current_design]
set_max_area 0

set_ideal_network [get_pins gf180mcu_fd_io__in_s_clk/Y]
create_clock [get_pins gf180mcu_fd_io__in_s_clk/Y] -name clk_core -period 20.0 -waveform {0 10.0}
set_clock_uncertainty 0.15 [get_clocks clk_core]
set_clock_transition 0.25 [get_clocks clk_core]

set clock_ports [get_ports { 
	clk_PAD 
}]
set_driving_cell -lib_cell gf180mcu_fd_io__in_s -pin PAD $clock_ports

set clk_core_inout_ports [get_ports { 
	uio_PAD[0]
	uio_PAD[1]
	uio_PAD[2]
	uio_PAD[3]
	uio_PAD[4]
	uio_PAD[5]
	uio_PAD[6]
	uio_PAD[7]
}] 
set_driving_cell -lib_cell gf180mcu_fd_io__bi_24t -pin PAD $clk_core_inout_ports
set_input_delay 8 -clock clk_core $clk_core_inout_ports
set_output_delay 8 -clock clk_core $clk_core_inout_ports

set clk_core_input_ports [get_ports { 
    ena_PAD
    rst_n_PAD
	ui_PAD[0]
	ui_PAD[1]
	ui_PAD[2]
	ui_PAD[3]
	ui_PAD[4]
	ui_PAD[5]
	ui_PAD[6]
	ui_PAD[7]
}] 
set_driving_cell -lib_cell gf180mcu_fd_io__in_c -pin PAD $clk_core_input_ports
set_input_delay 8 -clock clk_core $clk_core_input_ports

set clk_core_output_ports [get_ports { 
    uo_PAD[0]
    uo_PAD[1]
    uo_PAD[2]
    uo_PAD[3]
    uo_PAD[4]
    uo_PAD[5]
    uo_PAD[6]
    uo_PAD[7]
}] 
set_driving_cell -lib_cell gf180mcu_fd_io__bi_24t -pin PAD $clk_core_output_ports
set_output_delay 8 -clock clk_core $clk_core_output_ports

set_load -pin_load 5 [all_inputs]
set_load -pin_load 5 [all_outputs]
