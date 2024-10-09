# GPU variables
gpuusage=$(nvidia-smi -q | grep -w "Gpu" | awk '{print $3}')
gputemp=$(inxi -s | grep temp: | cut -d' ' -f11)

# CPU variables
cpuusage=$(top -i -bn 1 | grep '%Cpu' | awk '{print 100-$8}')
cputemp=$(inxi -s | grep ures: | cut -d' ' -f6 | cut -c 1-2)

# Memory variable
memusage=$(inxi -m | grep used | cut -d' ' -f6,7)

# other variables
see=$(echo C)

echo " GPU:[$gpuusage% $gputemp$see]  CPU:[$cpuusage% $cputemp$see]  MEM:[$memusage]"
