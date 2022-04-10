#!/bin/bash
if [ "$1" = "1" ]; then
    OP="Baseline.jar"
elif [ "$1" = "2" ]; then
    OP="OP1.jar"
elif [ "$1" = "3" ]; then
    OP="OP2.jar"
elif [ "$1" = "4" ]; then
    OP="OP3.jar"
elif [ "$1" = "5" ]; then
    OP="OP4.jar"
fi

spark-submit --class edu.cwru.bayesgrouptesting.benchmarks.LatticeBenchmark $OP $2 8
fi