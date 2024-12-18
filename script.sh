# GPU variables
gpuusage=$(cat /sys/class/drm/card1/device/gpu_busy_percent)
gputemp=$(sensors | grep edge: | cut -c 16-17)

# CPU variables
cpuusage=$(top -bn 1 | grep %Cpu | awk '{print 101-$8}')
cputemp=$(inxi -s | grep ures: | cut -d' ' -f6 | cut -c 1-2)

# Memory variable
memusage=$(inxi -c | grep Mem | cut -d':' -f2 | cut -c 2-6 | cut -d'.' -f1)

# other variables
see=$(echo °C)
mega=$(echo MB)

echo "GPU:[$gpuusage% $gputemp$see] CPU:[$cpuusage% $cputemp$see] RAM:[$memusage $mega]"
