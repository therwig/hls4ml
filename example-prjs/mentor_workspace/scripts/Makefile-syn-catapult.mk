help:
	@echo "make <TAB> for usage"
.PHONY: help

CCS_ASIC := $(shell ls -t Catapult_asic*ccs 2> /dev/null | head -n1)

CCS_FPGA := $(shell ls -t Catapult_fpga*ccs 2> /dev/null | head -n1)

gui-asic:
	catapult $(CCS_ASIC) &
.PHONY: gui-asic

gui-fpga:
	catapult $(CCS_FPGA) &
.PHONY: gui-fpga

hls-fpga-gui: --init
	catapult -file build_prj_fpga.tcl -logfile ./catapult-gui-fpga.log
#tar cvfz catapult-fpga-$$(date '+%Y%m%d-%H%M%S').tgz Catapult_fpga.ccs  Catapult_fpga catapult-gui-fpga.log tb_data/catapult_fpga_csim_results.log tb_data/catapult_fpga_rtl_cosim_results.log
.PHONY: hls-fpga-gui

hls-fpga-sh: --init
	time catapult -shell -file build_prj_fpga.tcl -logfile ./catapult-fpga.log
#tar cvfz catapult-fpga-$$(date '+%Y%m%d-%H%M%S').tgz Catapult_fpga.ccs  Catapult_fpga catapult-fpga.log tb_data/catapult_fpga_csim_results.log tb_data/catapult_fpga_rtl_cosim_results.log
.PHONY: hls-fpga-sh

hls-asic-gui: --init
	catapult -file build_prj_asic.tcl -logfile ./catapult-gui-asic.log
#tar cvfz catapult-asic-$$(date '+%Y%m%d-%H%M%S').tgz Catapult_asic.ccs  Catapult_asic catapult-gui-asic.log tb_data/catapult_asic_csim_results.log tb_data/catapult_asic_rtl_cosim_results.log
.PHONY: hls-asic-gui

hls-asic-sh: --init
	time catapult -shell -file build_prj_asic.tcl -logfile ./catapult-asic.log
#tar cvfz catapult-asic-$$(date '+%Y%m%d-%H%M%S').tgz Catapult_asic.ccs  Catapult_asic catapult-asic.log tb_data/catapult_asic_csim_results.log tb_data/catapult_asic_rtl_cosim_results.log
.PHONY: hls-asic-sh

kill-all:
	pkill -f catapult || pkill -f vsim
.PHONY: kill-all

#report:
#	@../../report-catapult.sh $(PROJECT) | tee report.log
#.PHONY: report

#
# Error analysis
# - ASIC C vs. TF/Keras simulation logs.
# - FPGA C vs. TF/Keras simulation logs.
# - ASIC RTL vs. TF/Keras simulation logs.
# - FPGA RTL vs. TF/Keras simulation logs.
#

validate-c-asic-sim:
	@set -o pipefail; python ../../scripts/validate.py \
		-r ./tb_data/tb_output_predictions.dat \
		-i ./tb_data/catapult_asic_csim_results.log \
		-t catapult \
		| tee validate-c.log
.PHONY: validate-c-asic-sim

validate-c-fpga-sim:
	@set -o pipefail; python ../../scripts/validate.py \
		-r ./tb_data/tb_output_predictions.dat \
		-i ./tb_data/catapult_fpga_csim_results.log \
		-t catapult \
		| tee validate-c.log
.PHONY: validate-c-fpga-sim

validate-rtl-asic-sim:
	@set -o pipefail; python ../../scripts/validate.py \
		-r ./tb_data/tb_output_predictions.dat \
		-i ./tb_data/catapult_asic_rtl_cosim_results.log \
		-t catapult \
		| tee validate-rtl.log
.PHONY: validate-rtl-asic-sim

validate-rtl-fpga-sim:
	@set -o pipefail; python ../../scripts/validate.py \
		-r ./tb_data/tb_output_predictions.dat \
		-i ./tb_data/catapult_fpga_rtl_cosim_results.log \
		-t catapult \
		| tee validate-rtl.log
.PHONY: validate-rtl-fpga-sim

#
# Compare simulation logs
# - C vs. RTL (ASIC)
# - C vs. RTL (FPGA)
# - ASIC vs. FPGA (C)
# - ASIC vs. FPGA (RTL)
#

compare-c-rtl-asic-sim:
	@vimdiff \
		./tb_data/catapult_asic_csim_results.log  \
		./tb_data/catapult_asic_rtl_cosim_results.log 
.PHONY: compare-c-rtl-asic-sim

compare-c-rtl-fpga-sim:
	@vimdiff \
		./tb_data/catapult_fpga_csim_results.log  \
		./tb_data/catapult_fpga_rtl_cosim_results.log 
.PHONY: compare-c-rtl-fpga-sim

compare-c-fpga-asic-sim:
	@vimdiff \
		./tb_data/catapult_fpga_csim_results.log  \
		./tb_data/catapult_asic_csim_results.log 
.PHONY: compare-c-fpga-asic-sim

compare-rtl-fpga-asic-sim:
	@vimdiff \
		./tb_data/catapult_fpga_rtl_cosim_results.log  \
		./tb_data/catapult_asic_rtl_cosim_results.log 
.PHONY: compare-rtl-fpga-asic-sim

clean:
	@echo "INFO: make ultraclean"
.PHONY: clean

ultraclean: clean
	rm -rf Catapult*
	rm -rf transcript vivado.jou vivado_*.str design_checker_constraints.tcl  design_checker_pre_build.tcl *.pinfo slec_*
	rm -rf *.png *.csv *.log
	rm -rf tb_data/*log
	rm -rf memlib
	rm -rf UVM_*
	rm -rf BRAM* RAMB* memlib_* w2_* w4_* w6_*
.PHONY: ultraclean

