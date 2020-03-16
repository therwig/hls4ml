all:
	@echo "INFO: make <TAB> for targets"
.PHONY: all

run-rc-fermi-lab:
	time rc -cmdfile ./output/fermi_lab/rc.cmd -logfile ./output/fermi_lab/rc.log -f ./scripts/fermi_lab/rc.tcl < ./scripts/terminator.rc
.PHONY: run-rc-fermi-lab

run-rc-catapult-hls:
	time rc -cmdfile ./output/catapult_hls/rc.cmd -logfile ./output/catapult_hls/rc.log -f ./scripts/catapult_hls/rc.tcl < ./scripts/terminator.rc
.PHONY: run-rc-catapult-hls

run-genus65:
	time genus -lic_startup Genus_Synthesis -abort_on_error -file ./scripts/genus/simp-65nm.g2c -log ./output/genus/65nm/genus
.PHONY: run-genus65

run-genus45:
	time genus -lic_startup Genus_Synthesis -abort_on_error -file ./scripts/genus/simp-45nm.g2c -log ./output/genus/45nm/genus
.PHONY: run-genus45

clean:
	@echo "INFO: make <TAB> for targets"
.PHONY: clean

clean-fermi-lab:
	rm -rf libscore_work fv
.PHONY: clean-fermi-lab
#rm -rf output/fermi_lab/* ./report/fermi_lab/*

clean-catapult-hls:
	rm -rf libscore_work fv output/catapult_hls/* ./report/catapult_hls/*
.PHONY: clean-catapult-hls

clean-genus:
	rm -rf fv output/genus/* report/genus/*
.PHONY: clean-genus

ultraclean: clean-fermi-lab clean-catapult-hls clean-genus
.PHONY: ultraclean
