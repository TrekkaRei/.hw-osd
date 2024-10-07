#!/bin/bash

cputemp=$(sensors | grep -w "Tctl" | cut -c 16-21 | cut -c 1-2)
gputemp=$(nvidia-smi | grep -w Default | cut -c 9-12 | cut -c 1-2)
cpuusage=$(top -i -bn 1 | grep '%Cpu' | awk '{print 100-$8}')
gpuusage=$(nvidia-smi -q | grep -w "Gpu" | awk '{print $3}')
memusage=$(fastfetch --logo none | grep RAM | cut -c 7-11)
see=$(echo C)
giga=$(echo GB)

echo " GPU:[$gpuusage% $gputemp$see]   CPU:[$cpuusage% $cputemp$see]   MEM:[$memusage$giga]"

