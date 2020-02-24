# written for flow package RTLCompiler 
set sdc_version 1.7 

set_operating_conditions typical
set_load 2.0 [all_outputs]
## driver/slew constraints on inputs
set data_inputs [list input_48_rsc_vld {input_48_rsc_dat[*]} layer7_out_rsc_rdy]
set_driving_cell -no_design_rule -library NangateOpenCellLibrary -lib_cell BUF_X2 -pin Z $data_inputs
create_clock -name clk -period 25.0 -waveform { 0.0 12.5 } [get_ports {clk}]
set_clock_uncertainty 0.0 [get_clocks {clk}]

create_clock -name virtual_io_clk -period 25.0
## IO TIMING CONSTRAINTS
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {rst}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_48_rsc_dat[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_48_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_48_rsc_rdy}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {input_48_rsc_triosy_lz}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {layer7_out_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {layer7_out_rsc_vld}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {layer7_out_rsc_rdy}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {layer7_out_rsc_triosy_lz}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_in_1_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_in_1_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_in_1_rsc_triosy_lz}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_out_1_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_out_1_rsc_vld}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {const_size_out_1_rsc_triosy_lz}]

