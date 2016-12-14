#!/usr/bin/env python

import numpy
import re
import sys

def main():
    filename = sys.argv[1]
    runtimes = readruntimes(filename)
    printsummary(runtimes)

def readruntimes(filename):
    logfile = open(filename, 'r')
    numpattern = re.compile('[\d]+')
    timestamps = []

    for line in logfile:
        if numpattern.match(line):
            timestamps.append(int(line))

    logfile.close()

    starts = timestamps[::2]
    ends = timestamps[1::2]

    return [ (e-s) for s,e in zip(starts,ends) ]

def printsummary(runtimes):
    print "------------------------------"
    print "count : ", len(runtimes)
    print "mean  : ", numpy.mean(runtimes)
    print "std   : ", numpy.std(runtimes)
    print "------------------------------"
    print "max (100%)     : ", numpy.max(runtimes)
    print "75% percentile : ", numpy.percentile(runtimes, 75, interpolation='midpoint')
    print "median (50%)   : ", numpy.median(runtimes)
    print "25% percentile : ", numpy.percentile(runtimes, 25, interpolation='midpoint')
    print "min (0%)       : ", numpy.min(runtimes)
    print "------------------------------"

def writecsv(runtimes):
    # TBD

if __name__=="__main__":
   main()
