TARGET = econV0

EXE = $(TARGET).x

VCD_FILE = $(TARGET).vcd
CONFIG_FILE = show.gtkw

VPATH :=
VPATH += ../src
VPATH += ../tb

V_SOURCES :=
V_SOURCES += $(subst ../tb/,,$(wildcard ../tb/*.v))
V_SOURCES += $(subst ../src/,,$(wildcard ../src/*.v))

.SUFFIXES: .v .x

TB_INDEX ?= 0

all:
	@echo "INFO: make <TAB> for targets"
.PHONY: all

compile: $(EXE)

$(EXE): $(V_SOURCES)
	iverilog $^ -o $@ -DTB_INDEX=$(TB_INDEX)

run: compile
	./$(EXE)
.PHONY: run

run-all:
	@./run_tests.sh
.PHONY: run-all

view: run
	gtkwave $(VCD_FILE) $(CONFIG_FILE) &
.PHONY: view

clean:
	rm -rf $(EXE) $(VCD_FILE)
.PHONY: clean

