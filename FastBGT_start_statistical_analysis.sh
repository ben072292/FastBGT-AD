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

if [ "$3" = "1" ]; then
    RISK="0.02"
elif [ "$3" = "2" ]; then
    RISK="0.05"
elif [ "$3" = "3" ]; then
    RISK="0.1"
elif [ "$3" = "4" ]; then
    RISK="0.15"
elif [ "$3" = "5" ]; then
    RISK="0.2"
elif [ "$3" = "6" ]; then
    RISK="1-mix"
elif [ "$3" = "7" ]; then
    RISK="2-mix"
elif [ "$3" = "8" ]; then
    RISK="3-mix"
elif [ "$3" = "9" ]; then
    RISK="4-mix"
fi

if [ "$4" = "1" ]; then
    spark-submit --class edu.cwru.bayesgrouptesting.tests.MultiTreeTest $OP $2 LatticeDilution $RISK 0.01 0.01 1 24
elif [ "$4" = "2" ]; then
    spark-submit --class edu.cwru.bayesgrouptesting.tests.SingleTreeTest $OP $2 LatticeDilution $RISK 0.01 0.01 1 24
elif [ "$4" = "3" ]; then
    spark-submit --class edu.cwru.bayesgrouptesting.tests.HybridTreeTest $OP $2 LatticeDilution $RISK 0.01 0.01 1 18 6
elif [ "$4" = "4" ]; then
    spark-submit --class edu.cwru.bayesgrouptesting.tests.HybridCrossPruningTreeTest $OP $2 LatticeDilution $RISK 0.01 0.01 1 24 0 12 1e-5 8