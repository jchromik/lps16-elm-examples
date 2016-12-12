#!/bin/bash
# Usage:
# benchmark.sh FILENAME BENCHCOUNT INTERVAL
# FILENAME: File to touch to trigger recompile + reload + replay.
# BENCHCOUNT: Number of benchmarks to be performed.
# INTERVAL: Time between the benchmarks. Should be longer than the time recompile + reload + replay requires.
# Example:
# benchmark.sh ../Counter.elm 100 2
# --> 100 benchmarks on Counter.elm starting every 2 seconds.

FILENAME=$1
BENCHCOUNT=$2
INTERVAL=$3

for i in $(seq 1 $BENCHCOUNT)
do
  touch "$FILENAME"
  sleep $INTERVAL
done
