# GPU variables
gpuusage=$(nvidia-smi -q | grep -w "Gpu" | awk '{print $3}')
gputemp=$(nvidia-smi | grep -w Default | cut -c 9-12 | cut -c 1-2)

# CPU variables
cpuusage=$(top -i -bn 1 | grep '%Cpu' | awk '{print 100-$8}')
cputemp=$(sensors | grep -w "Tctl" | cut -c 16-21 | cut -c 1-2)

# Memory variable
memusage=$(fastfetch --logo none | grep RAM | awk '{print $2}')

# other variables
see=$(echo C)
giga=$(echo GiB)

echo " GPU:[$gpuusage% $gputemp$see]  CPU:[$cpuusage% $cputemp$see]  MEM:[$memusage $giga]"
