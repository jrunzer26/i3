#!/bin/bash

i3status | while :
do
    read line
    name=$(nvidia-smi --query-gpu=name --format=csv,noheader)
    temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader)
    utilization=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader)
    fan=$(nvidia-smi --query-gpu=fan.speed --format=csv,noheader)
    totalMemory=$(nvidia-smi --query-gpu=memory.total --format=csv,noheader)
    memoryUsed=$(nvidia-smi --query-gpu=memory.used --format=csv,noheader)
    echo "$name  Temp: $temp""°C  Util: $utilization  Fan: $fan  Memory Used: $memoryUsed""/$totalMemory $line" || exit 1
done