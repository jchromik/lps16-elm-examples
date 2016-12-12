#!/usr/bin/env python

from operator import add
import re
import sys

filename = sys.argv[1]
logfile = open(filename, 'r')
numpattern = re.compile('[\d]+')
timestamps = []

for line in logfile:
    if numpattern.match(line):
        timestamps.append(int(line))

starts = timestamps[::2]
ends = timestamps[1::2]

runtimes = [ (e-s) for s,e in zip(starts,ends) ]

print reduce(add, runtimes)/len(runtimes)

logfile.close()
