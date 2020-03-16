# Compare file content: 1 = same, 0 = different
proc compare_files {file_1 file_2} {
    # Check if files exist, error otherwise
    if {! ([file exists $file_1] && [file exists $file_2])} {
        return 0
    }
    # Files with different sizes are obviously different
    if {[file size $file_1] != [file size $file_2]} {
        return 0
    }

    # String compare the content of the files
    set fh_1 [open $file_1 r]
    set fh_2 [open $file_2 r]
    set equal [string equal [read $fh_1] [read $fh_2]]
    close $fh_1
    close $fh_2
    return $equal
}

if {$opt(asic) > 0} {
    project new -name Catapult_asic
    set CSIM_RESULTS "./tb_data/catapult_asic_csim_results.log"
    set RTL_COSIM_RESULTS "./tb_data/catapult_asic_rtl_cosim_results.log"
} else {
    project new -name Catapult_fpga
    set CSIM_RESULTS "./tb_data/catapult_fpga_csim_results.log"
    set RTL_COSIM_RESULTS "./tb_data/catapult_fpga_rtl_cosim_results.log"
}

#
# Reset the options to the factory defaults
#

solution new -state initial
solution options defaults

solution options set Flows/ModelSim/VLOG_OPTS {-suppress 12110}
solution options set Flows/ModelSim/VSIM_OPTS {-t ps -suppress 12110}
solution options set Flows/DesignCompiler/OutNetlistFormat verilog
solution options set /Input/CppStandard c++11
#solution options set /Input/TargetPlatform x86_64

set CATAPULT_VERSION  [string map { / - } [string map { . - } [application get /SYSTEM/RELEASE_VERSION]]]
solution options set Cache/UserCacheHome "catapult_cache_$CATAPULT_VERSION"
solution options set Cache/DefaultCacheHomeEnabled false

flow package require /SCVerify
#options set Flows/OSCI/GCOV true
#flow package require /CCOV
#flow package require /SLEC
#flow package require /CDesignChecker

#directive set -DESIGN_GOAL area
##directive set -OLD_SCHED false
#directive set -SPECULATE true
#directive set -MERGEABLE true
directive set -REGISTER_THRESHOLD 8192
#directive set -MEM_MAP_THRESHOLD 32
#directive set -LOGIC_OPT false
#directive set -FSM_ENCODING none
#directive set -FSM_BINARY_ENCODING_THRESHOLD 64
#directive set -REG_MAX_FANOUT 0
#directive set -NO_X_ASSIGNMENTS true
#directive set -SAFE_FSM false
#directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
#directive set -REGISTER_SHARING_LIMIT 0
#directive set -ASSIGN_OVERHEAD 0
#directive set -TIMING_CHECKS true
#directive set -MUXPATH true
#directive set -REALLOC true
#directive set -UNROLL no
#directive set -IO_MODE super
#directive set -CHAN_IO_PROTOCOL standard
#directive set -ARRAY_SIZE 1024
#directive set -REGISTER_IDLE_SIGNAL false
#directive set -IDLE_SIGNAL {}
#directive set -STALL_FLAG false
directive set -TRANSACTION_DONE_SIGNAL true
#directive set -DONE_FLAG {}
#directive set -READY_FLAG {}
#directive set -START_FLAG {}
#directive set -BLOCK_SYNC none
#directive set -TRANSACTION_SYNC ready
#directive set -DATA_SYNC none
#directive set -CLOCKS {clk {-CLOCK_PERIOD 0.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
#directive set -RESET_CLEARS_ALL_REGS true
#directive set -CLOCK_OVERHEAD 20.000000
#directive set -OPT_CONST_MULTS use_library
#directive set -CHARACTERIZE_ROM false
#directive set -PROTOTYPE_ROM true
#directive set -ROM_THRESHOLD 64
#directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
#directive set -CLUSTER_OPT_CONSTANT_INPUTS true
#directive set -CLUSTER_RTL_SYN false
#directive set -CLUSTER_FAST_MODE false
#directive set -CLUSTER_TYPE combinational
#directive set -COMPGRADE fast

# Design specific options.
if {$opt(asic) > 0} {
solution options set Flows/QuestaSIM/SCCOM_OPTS {-g -x c++ -Wall -Wno-unused-label -Wno-unknown-pragmas -DRTL_SIM -D__ASIC__}
solution options set /Input/CompilerFlags {-DMNTR_CATAPULT_HLS -D__ASIC__}
} else {
solution options set Flows/QuestaSIM/SCCOM_OPTS {-g -x c++ -Wall -Wno-unused-label -Wno-unknown-pragmas -DRTL_SIM -D__FPGA__}
solution options set /Input/CompilerFlags {-DMNTR_CATAPULT_HLS -D__FPGA__}
}
solution options set /Input/SearchPath {../inc ../converter/firmware}

# Add source files.
solution file add ../converter/firmware/converter.cpp -type C++
solution file add ../converter/sc_main.cpp -type C++ -exclude true
solution file set ../converter/sc_main.cpp -args {-D__WEIGHTS_FROM_FILE__ -D__WEIGHTS_DIR__=../converter/firmware/weights/}

go new

#
#
#

go analyze

#
#
#


# Set the top module and inline all of the other functions.

# 10.4c
directive set -DESIGN_HIERARCHY converter

# 10.5beta
#solution design set converter -top
#solution design set {nnet::dense_large<ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, config4>} -inline
#solution design set {nnet::conv_2d<ac_fixed<12, 2, true, AC_TRN, AC_WRAP>, ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, config2>} -inline
#solution design set {nnet::relu<ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, relu_config3>} -inline
#solution design set {nnet::relu<ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, ac_fixed<12, 4, true, AC_TRN, AC_WRAP>, relu_config5>} -inline

# Run C simulation.
if {$opt(csim)} {
    flow run /SCVerify/launch_make ./scverify/Verify_orig_cxx_osci.mk {} SIMTOOL=osci sim
}

#
#
#

# Run HLS.
if {$opt(hsynth)} {

    if {$opt(asic) == 1} {
        solution library add nangate-45nm_beh -- -rtlsyntool DesignCompiler -vendor Nangate -technology 045nm
        solution library add ccs_sample_mem
    } elseif {$opt(asic) == 2} {
        solution library add nangate-45nm_beh -- -rtlsyntool RTLCompiler -vendor Nangate -technology 045nm
        solution library add ccs_sample_mem
    } elseif {$opt(asic) == 3} {
        puts "ERROR: Cadence Genus is not supported"
        exit 1
    } else {
	# solution library add mgc_Altera-Arria-10-1_beh -- -rtlsyntool Quartus -manufacturer Altera -family {Arria 10} -speed 1 -part 10AS016E3F27E1HG
	# solution library add Altera_ROMS
	# solution library add Altera_DIST
	# solution library add Altera_M20K
	# solution library add Altera_MLAB
        solution library add mgc_Xilinx-KINTEX-u-2_beh -- -rtlsyntool Vivado -manufacturer Xilinx -family KINTEX-u -speed -2 -part xcku115-flva2104-2-i
        solution library add Xilinx_RAMS
        solution library add Xilinx_ROMS
        solution library add Xilinx_FIFO
    }

    go libraries

    #
    #
    #

    directive set -CLOCKS { \
        clk { \
            -CLOCK_PERIOD 25 \
            -CLOCK_EDGE rising \
            -CLOCK_HIGH_TIME 12.5 \
            -CLOCK_OFFSET 0.000000 \
            -CLOCK_UNCERTAINTY 0.0 \
            -RESET_KIND sync \
            -RESET_SYNC_NAME rst \
            -RESET_SYNC_ACTIVE high \
            -RESET_ASYNC_NAME arst_n \
            -RESET_ASYNC_ACTIVE low \
            -ENABLE_NAME {} \
            -ENABLE_ACTIVE high \
    } \
    }

    # BUGFIX: This prevents the creation of the empty module CGHpart. In the
    # next releases of Catapult HLS, this may be fixed.
    directive set /converter -GATE_EFFORT normal

    directive set /converter -EFFORT_LEVEL high
    
    go assembly

    #
    #
    #

    # General directives
    directive set /converter/core -DESIGN_GOAL Latency
    directive set /converter/core -CLUSTER addtree

    # Top-Module I/O
    directive set /converter/input:rsc -MAP_TO_MODULE ccs_ioport.ccs_in_wait
    directive set /converter/input:rsc -PACKING_MODE sidebyside
    directive set /converter/input -WORD_WIDTH 1056
    directive set /converter/output:rsc -MAP_TO_MODULE ccs_ioport.ccs_out_wait
    directive set /converter/output:rsc -PACKING_MODE sidebyside
    directive set /converter/output -WORD_WIDTH 384

    # Arrays
    directive set /converter/de_bruijin.rom:rsc -MAP_TO_MODULE {[Register]}

    # Loops
    directive set /converter/core/main -PIPELINE_INIT_INTERVAL 1
    directive set /converter/core/SUM_LOOP -UNROLL yes
    directive set /converter/core/REDUCE_LOOP -UNROLL yes

    go architect

    #
    #
    #

    go allocate

    #
    # RTL
    #

    go extract

    #
    #
    #

    if {$opt(rtlsim)} {
        flow run /SCVerify/launch_make ./scverify/Verify_rtl_v_msim.mk {} SIMTOOL=msim sim
        #flow run /SCVerify/launch_make ./scverify/Verify_rtl_v_msim.mk {} SIMTOOL=msim simgui

        if {$opt(validation)} {
          puts "***** C/RTL VALIDATION *****"
          if {[compare_files $CSIM_RESULTS $RTL_COSIM_RESULTS]} {
              puts "INFO: Test PASSED"
          } else {
              puts "ERROR: Test failed"
              puts "ERROR: - csim log:      $CSIM_RESULTS"
              puts "ERROR: - RTL-cosim log: $RTL_COSIM_RESULTS"
              exit 1
          }
        }
    }

    if {$opt(lsynth)} {

        if {$opt(asic) == 1} {
            flow run /DesignCompiler/dc_shell ./concat_rtl.v.dc v
        } elseif {$opt(asic) == 2} {
            flow run /RTLCompiler/rc ./concat_rtl.v.rc v
        } elseif {$opt(asic) == 3} {
            puts "ERROR: Cadence Genus is not supported"
            exit 1
        } else {
            flow run /Vivado/synthesize -shell vivado_concat_v/concat_rtl.v.xv
        }

    }
}

project save
