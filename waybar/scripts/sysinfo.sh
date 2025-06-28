#!/bin/bash

# CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

# CPU temperature (for most systems using hwmon)
cpu_temp=$(sensors | awk '/Package id 0:/ {print $4}' | head -n 1)

# RAM usage
mem_used=$(free -h | awk '/Mem:/ {print $3 "/" $2}')

# Disk usage (/ partition)
disk_usage=$(df -h / | awk 'NR==2 {print $3 "/" $2}')

echo "$(printf "%04.1f" $cpu_usage)% | $cpu_temp | $mem_used | $disk_usage"
