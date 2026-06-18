#!/bin/bash -l
set -e

values=(0.0175 0.04 0.08 0.010 0.14 0.16 0.2 0.25)

for cr in "${values[@]}"; do

    echo "=============================="
    echo "Running config_submesoscale_cr = $cr"
    echo "=============================="

    export config_submesoscale_cr=$cr

    bash run_e3sm_icos30.sh |& tee run_cr_${cr}.log

done
