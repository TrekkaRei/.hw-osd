# GPU variables
gpuusage=$(nvidia-smi -q | grep -w "Gpu" | awk '{print $3}')
gputemp=$(inxi -s | grep temp: | cut -d' ' -f11)

# CPU variables
cpuusage=$(top -bn 1 | grep %Cpu | awk '{print 101-$8}')
cputemp=$(inxi -s | grep ures: | cut -d' ' -f6 | cut -c 1-2)

# Memory variable
memusage=$(inxi -c | grep Mem | cut -d':' -f2 | cut -c 2-6 | cut -d'.' -f1)

# other variables
see=$(echo °C)
mega=$(echo MB)

echo "GPU:[$gpuusage% $gputemp$see] CPU:[$cpuusage% $cputemp$see] RAM:[$memusage $mega]"
