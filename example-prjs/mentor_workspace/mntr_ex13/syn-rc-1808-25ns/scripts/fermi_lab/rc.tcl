#######################################################
#                                                     
#  script calls other scripts
#                                                     
#######################################################

if {[catch {

#    source ../scripts/init.tcl
#    if {$DFT == "ON"} {source ../scripts/dft.tcl}
#    source ../scripts/syn.tcl
#    if {$DFT == "ON"} {source ../scripts/dft2.tcl}
#    source ../scripts/syn2.tcl

	source ./scripts/fermi_lab/init.tcl
	if {$DFT == "ON"} {source ./scripts/fermi_lab/dft.tcl}
	source ./scripts/fermi_lab/syn.tcl
	if {$DFT == "ON"} {source ./scripts/fermi_lab/dft2.tcl}
	source ./scripts/fermi_lab/syn2.tcl

	#####################################################################
	# BEGIN POSTAMBLE: DO NOT EDIT

	# Write the netlist
	#write -m > $ec::outDir/r2g.v
	write -m > ./output/fermi_lab/r2g.v

	# Write SDC file
	#write_sdc > $ec::outDir/r2g.sdc
	write_sdc > ./output/fermi_lab/r2g.sdc

	# Write RC script file
	#write_script > $ec::outDir/r2g.g
    write_script > ./output/fermi_lab/r2g.g

	# Write LEC file
	#write_do_lec -no_exit -revised_design $ec::outDir/r2g.v  >../../lec/scripts/rtl2map.tcl
	write_do_lec -no_exit -revised_design ./output/fermi_lab/r2g.v  > ./output/fermi_lab/rtl2map.tcl

	# END POSTAMBLE
	#####################################################################


	#####################################################################
	# Noload/zero-load analysis on final result
	#####################################################################

    # GDG: add extra reports
	report timing -full  > report/fermi_lab/timing_full.rpt
    report timing -lint  > report/fermi_lab/timing_lint.rpt
    report boundary_opt  > report/fermi_lab/boundary_opto.rpt
    report clocks        > report/fermi_lab/clocks.rpt
    report design_rules  > report/fermi_lab/design_rules.rpt
    report datapath      > report/fermi_lab/datapath.rpt;
    report clock_gating  > report/fermi_lab/clock_gating.rpt
    #report loop          > report/fermi_lab/loop_breakers.rpt; # NO
    report messages -all > report/fermi_lab/messages.rpt
    report qor           > report/fermi_lab/qor.rpt
    #report runtime       > report/fermi_lab/runtime.rpt; # NO
    report yield         > report/fermi_lab/des_yield.rpt
    report gates         > report/fermi_lab/gates.rpt
    report area          > report/fermi_lab/area.rpt
    report ple           > report/fermi_lab/ple.rpt
    report units         > report/fermi_lab/des_units.rpt
    report sequential    > report/fermi_lab/des_registers.rpt


	# end timer
	puts "\nEC INFO: End at: [clock format [clock seconds] -format {%x %X}]"
	set ec::end [clock seconds]
	set ec::seconds [expr $ec::end - $ec::start]
	puts "\nEC INFO: Elapsed-time: $ec::seconds seconds\n"

	# done
	#exit

} msg]} {
	puts "\nEC ERROR: RC could not finish successfully. Force an exit now. ($msg)\n"
	#exit -822
}

