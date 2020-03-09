if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"


####################################################################
## Load Design
####################################################################

read_hdl input/concat_rtl.v

elaborate $DESIGN

puts "Runtime & Memory after 'read_hdl'"
time_info Elaboration

check_design -unresolved



####################################################################
## Constraints Setup
####################################################################

read_sdc scripts/constraint.sdc

puts "The number of exceptions is [llength [vfind "design:$DESIGN" -exception *]]"


if {![file exists ${_OUTPUTS_PATH}]} {
  file mkdir ${_OUTPUTS_PATH}
  puts "Creating directory ${_OUTPUTS_PATH}"
}

if {![file exists ${_REPORTS_PATH}]} {
  file mkdir ${_REPORTS_PATH}
  puts "Creating directory ${_REPORTS_PATH}"
}


#### To turn off sequential merging on the design
#### uncomment & use the following attributes.
##set_db / .optimize_merge_flops false
##set_db / .optimize_merge_latches false
#### For a particular instance use attribute 'optimize_merge_seqs' to turn off sequential merging.



####################################################################################################
## Synthesizing to generic
####################################################################################################

set_db / .syn_generic_effort $SYN_EFF
syn_generic
puts "Runtime & Memory after 'syn_generic'"
time_info GENERIC
report_dp > $_REPORTS_PATH/generic/${DESIGN}_datapath.rpt
write_snapshot -outdir $_REPORTS_PATH -tag generic
#write_snapshot -directory $_REPORTS_PATH -tag generic
report_summary -directory $_REPORTS_PATH



####################################################################################################
## Synthesizing to gates
####################################################################################################

set_db / .syn_map_effort $MAP_EFF
syn_map
puts "Runtime & Memory after 'syn_map'"
time_info MAPPED
write_snapshot -outdir $_REPORTS_PATH -tag map
#write_snapshot -directory $_REPORTS_PATH -tag map
report_summary -directory $_REPORTS_PATH
report_dp > $_REPORTS_PATH/map/${DESIGN}_datapath.rpt

##Intermediate netlist for LEC verification..
write_hdl -lec > ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v
write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do

## ungroup -threshold <value>



#######################################################################################################
## Incremental Synthesis
#######################################################################################################

## Uncomment to remove assigns & insert tiehilo cells during Incremental synthesis
##set_db / .remove_assigns true
##set_remove_assign_options -buffer_or_inverter <libcell> -design <design|subdesign>
##set_db / .use_tiehilo_for_const <none|duplicate|unique>
set_db / .syn_opt_effort $MAP_EFF
syn_opt
write_snapshot -outdir $_REPORTS_PATH -tag syn_opt
#write_snapshot -directory $_REPORTS_PATH -tag syn_opt
report_summary -directory $_REPORTS_PATH

puts "Runtime & Memory after incremental synthesis"
time_info INCREMENTAL

write_snapshot -outdir $_REPORTS_PATH -tag final
#write_snapshot -directory $_REPORTS_PATH -tag final
report_summary -directory $_REPORTS_PATH

write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_m.v
## write_script > ${_OUTPUTS_PATH}/${DESIGN}_m.script
write_sdc > ${_OUTPUTS_PATH}/${DESIGN}_m.sdc

write_design -base_name ${_OUTPUTS_PATH}/${DESIGN}_wd  ${DESIGN}



#################################
### write_do_lec
#################################

write_do_lec -golden_design ${_OUTPUTS_PATH}/${DESIGN}_intermediate.v -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile  ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do
##Uncomment if the RTL is to be compared with the final netlist..
##write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile ${_LOG_PATH}/rtl2final.lec.log > ${_OUTPUTS_PATH}/rtl2final.lec.do

puts "Final Runtime & Memory."
time_info FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

#file copy [get_db / .stdout_log] ${_LOG_PATH}/.

##quit
##delete_obj [get_db designs]
##}
