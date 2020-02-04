#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/therwig/sandbox/hls4ml/example-prjs/mentor_workspace/mntr_ex10/convert/keras_econV1/econV1_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
