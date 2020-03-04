## HLS RC synthesis script

puts "-- Note: RTL Compiler Started"

set hls_status 0

proc run_cmd { cmd errstr } {
  upvar hls_status hls_status
  puts $cmd
  set retVal {}
  if { !$hls_status } {
    if { [catch { set retVal [uplevel 1 [list eval $cmd] ] } ] } {
      puts "Error: Unable to $errstr."
      set hls_status 1
    }
  } else {
    puts "Error: $errstr skipped due to previous errors."
  }
  set retVal
}

# Source custom RTLCompiler script for specified stage
# stage is one of: initial analyze synthesis reports final
proc source_custom_script { stage } {
   global env
   if { [info exists env(RTLCompiler_CustomScriptDirPath)] } {
      set dir_path $env(RTLCompiler_CustomScriptDirPath)
      if { $dir_path ne "" } {
         set script [file join $dir_path rc_${stage}.tcl]
         if { [file exists $script] } {
            set cmd "source $script"
            set msg [list run custom script $script]
            uplevel 1 [list run_cmd $cmd $msg]
         }
      }
   }
}

## Set the variable for file path prefixing 
#set RTL_TOOL_SCRIPT_DIR /home/giuseppe/research/projects/fastml/hls4ml-mentor-therwig.git/example-prjs/mentor_workspace/mntr_ex9/syn-catapult-hls/Catapult_asic/econ_4x4_d10.v1/.
#set RTL_TOOL_SCRIPT_DIR [file dirname [file normalize [info script]]]
#puts "-- RTL_TOOL_SCRIPT_DIR is set to '$RTL_TOOL_SCRIPT_DIR' "
set MGC_HOME /opt/cad/catapult

puts "Note: Removing old directory gate_synthesis_rc"
if { [file isdirectory "./output/catapult_hls/gate_synthesis_rc"] } {
  file delete -force -- "./output/catapult_hls/gate_synthesis_rc"
}
puts "Note: Creating directory ./output/catapult_hls/gate_synthesis_rc"
file mkdir "./output/catapult_hls/gate_synthesis_rc"
lcd "./output/catapult_hls/gate_synthesis_rc"

## Initialize RC-HLS variables
set_attr hdl_max_loop_limit 1000
set hls_status 0
set_attr delete_unloaded_insts false

# Source potential custom script
source_custom_script initial

## Configure technology settings
set_attr library /opt/cad/catapult/pkgs/siflibs/nangate/nangate45nm_nldm.lib
set_attr lef_library /opt/cad/catapult/pkgs/siflibs/nangate/nangate45nm.lef

## Exclude cells from synthesis
set_attr avoid true [find /lib*/NangateOpenCellLibrary -libcell CLKBUF_X1]
set_attr avoid true [find /lib*/NangateOpenCellLibrary -libcell CLKBUF_X2]
set_attr avoid true [find /lib*/NangateOpenCellLibrary -libcell CLKBUF_X3]

# Source potential custom script
source_custom_script analyze

## Analyze concat_rtl.v 
run_cmd {read_hdl -v2001   ../../../input/concat_rtl.v} {analyze file concat_rtl.v}

## Elaborate design econ_4x4_d10 
run_cmd {elaborate  "econ_4x4_d10"} {elaborate econ_4x4_d10 {}}

# INFO: in catapult interconnect_mode has been set to none - interconnect_mode in RTL compiler will be set to wireloads but no wireload settings will be written into the constraints file 
set_attr interconnect_mode wireload

## Include SDC file
cd /designs/econ_4x4_d10
read_sdc -stop_on_errors ../../../scripts/constraint.sdc
cd /

puts "[clock format [clock seconds] -format {%a %b %d %H:%M:%S %Z %Y}]"

set digns_with_mul [find /designs* -subdesign mul*]
if { [llength $digns_with_mul] > 0 } {
  set_attribute user_sub_arch {non_booth} [find /designs* -subdesign mul*]
}
puts "-- Starting synthesis for design 'econ_4x4_d10'"
# Source potential custom script
source_custom_script synthesis
uniquify econ_4x4_d10
synthesize -to_mapped

# Source potential custom script
source_custom_script reports
puts "-- Requested 3 fractional digits for design 'econ_4x4_d10' timing"
puts "-- Requested  fractional digits for design 'econ_4x4_d10' capacitance"
puts "-- Tool output delay factor to nS: 0.001"
puts "-- Library delay factor to nS: 1.0"
puts "-- Characterization mode: p2p "
puts "-- Synthesis area report for design 'econ_4x4_d10'"
report area /designs/econ_4x4_d10
report gates /designs/econ_4x4_d10
puts "-- END Synthesis area report for design 'econ_4x4_d10'"

cd /designs/econ_4x4_d10
ungroup -all
  if { [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '0' 'INOUT' CLOCK 'clk'"

  }
  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '1' 'IN' CLOCK 'input_1_rsc_vld'"

  }
  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '5' 'IN' CLOCK 'w2_rsc_vld'"

  }
  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '6' 'IN' CLOCK 'b2_rsc_vld'"

  }
  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '7' 'IN' CLOCK 'w4_rsc_vld'"

  }
  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"

    puts "-- Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis input_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '8' 'IN' CLOCK 'b4_rsc_vld'"

  }
  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/clk}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '0' 'INOUT' CLOCK 'clk'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/input_1_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '1' 'IN' CLOCK 'input_1_rsc_vld'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/w2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '5' 'IN' CLOCK 'w2_rsc_vld'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/b2_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '6' 'IN' CLOCK 'b2_rsc_vld'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/w4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '7' 'IN' CLOCK 'w4_rsc_vld'"
  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 && [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -clock {*/b4_rsc_vld}]
    puts "-- END Synthesis register_to_register:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '8' 'IN' CLOCK 'b4_rsc_vld'"
  }

  if { [llength [find / -clock {*/clk}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/clk}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '0' 'INOUT' CLOCK 'clk' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [find / -clock {*/input_1_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/input_1_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' CLOCK 'input_1_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [find / -clock {*/w2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w2_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' CLOCK 'w2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [find / -clock {*/b2_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b2_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' CLOCK 'b2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [find / -clock {*/w4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/w4_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' CLOCK 'w4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [find / -clock {*/b4_rsc_vld}] ] > 0 } {
    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -clock {*/b4_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis register_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' CLOCK 'b4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

  if { [llength [all_inputs -design econ_4x4_d10]] != 0 && [llength [all_outputs -design econ_4x4_d10]] != 0 } {
    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/input_1_rsc_dat[*]}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '1' 'IN' port 'input_1_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w2_rsc_dat[*]}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '5' 'IN' port 'w2_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b2_rsc_dat[*]}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '6' 'IN' port 'b2_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/w4_rsc_dat[*]}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '7' 'IN' port 'w4_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_vld}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_vld' '8' 'IN' port 'b4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_vld}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_vld'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_dat[*]}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_dat'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/input_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '1' 'IN' port 'input_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/layer5_out_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '2' 'OUT' port 'layer5_out_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_in_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '3' 'OUT' port 'const_size_in_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/const_size_out_1_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '4' 'OUT' port 'const_size_out_1_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/w2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '5' 'IN' port 'w2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/b2_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '6' 'IN' port 'b2_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/w4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '7' 'IN' port 'w4_rsc_triosy_lz'"

    puts "-- Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"
    report timing -full_pin_names -from [find / -port {*/b4_rsc_dat[*]}] -to [find / -port {*/b4_rsc_triosy_lz}]
    puts "-- END Synthesis input_to_output:timing report for design 'econ_4x4_d10' '8' 'IN' port 'b4_rsc_dat' '8' 'IN' port 'b4_rsc_triosy_lz'"

  }

if {$hls_status} {
  puts "Warning: Check transcript for errors hls_status=$hls_status"
}
puts "[clock format [clock seconds] -format {%a %b %d %H:%M:%S %Z %Y}]"
change_names -verilog
write_hdl econ_4x4_d10 > gate.rc.v.v
puts "-- Netlist for design 'econ_4x4_d10' written to gate.rc.v.v"
write_sdc > gate.rc.v.sdc
puts "-- SDC for design 'econ_4x4_d10' written to gate.rc.v.sdc"
write_sdf > gate.rc.v.sdf
puts "-- SDF for design 'econ_4x4_d10' written to gate.rc.v.sdf"

report messages -all > messages.rpt
report timing > timing.rpt

# GDG: add extra reports
report timing        > ../../../report/catapult_hls/timing.rpt
report timing -full  > ../../../report/catapult_hls/timing_full.rpt
report timing -lint  > ../../../report/catapult_hls/timing_lint.rpt
report boundary_opt  > ../../../report/catapult_hls/boundary_opto.rpt
report clocks        > ../../../report/catapult_hls/clocks.rpt
report design_rules  > ../../../report/catapult_hls/design_rules.rpt
report datapath      > ../../../report/catapult_hls/datapath.rpt;
report clock_gating  > ../../../report/catapult_hls/clock_gating.rpt
#report loop          > ../../../report/catapult_hls/loop_breakers.rpt; # NO
report messages -all > ../../../report/catapult_hls/messages.rpt
report qor           > ../../../report/catapult_hls/qor.rpt
#report runtime       > ../../../report/catapult_hls/runtime.rpt; # NO
report yield         > ../../../report/catapult_hls/des_yield.rpt
report gates         > ../../../report/catapult_hls/gates.rpt
report area          > ../../../report/catapult_hls/area.rpt
report ple           > ../../../report/catapult_hls/ple.rpt
report units         > ../../../report/catapult_hls/des_units.rpt
report sequential    > ../../../report/catapult_hls/des_registers.rpt

# Source potential custom script
source_custom_script final
puts "-- Synthesis finished for design 'econ_4x4_d10'"

