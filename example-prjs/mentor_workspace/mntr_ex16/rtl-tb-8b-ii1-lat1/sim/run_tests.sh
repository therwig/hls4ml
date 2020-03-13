#!/bin/bash

make clean

for i in $(seq 0 50); do
    make clean
    TB_INDEX=$i make run
    if [ $? -ne 0 ]; then
        return 1
    fi
done
