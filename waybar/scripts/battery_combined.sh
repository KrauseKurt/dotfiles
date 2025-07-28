#!/bin/bash

# Read capacities
capacity0=$(cat /sys/class/power_supply/BAT0/capacity)
capacity1=$(cat /sys/class/power_supply/BAT1/capacity)
status0=$(cat /sys/class/power_supply/BAT0/status)
status1=$(cat /sys/class/power_supply/BAT1/status)

# Average the capacities
capacity=$(( (capacity0 + capacity1) / 2 ))

# Determine overall status
if [[ "$status0" == "Charging" || "$status1" == "Charging" ]]; then
    status="Charging"
else
    status="Discharging"
fi

# Pick icon
if [ "$status" = "Charging" ]; then
    icon=" "
elif [ "$capacity" -le 20 ]; then
    icon=" "
elif [ "$capacity" -le 40 ]; then
    icon=" "
elif [ "$capacity" -le 60 ]; then
    icon=" "
elif [ "$capacity" -le 80 ]; then
    icon=" "
else
    icon=" "
fi

# Assign class if low battery
if [ "$capacity" -lt 20 ]; then
    class="low"
else
    class="normal"
fi

# JSON output with "class"
echo "{\"text\": \"$icon $capacity%\", \"tooltip\": \"BAT0: $capacity0% ($status0)\\nBAT1: $capacity1% ($status1)\", \"class\": \"$class\"}"
