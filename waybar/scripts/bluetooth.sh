#!/bin/bash

power=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
devices=$(bluetoothctl paired-devices | wc -l)
connected=$(bluetoothctl info | grep "Connected: yes")

if [[ "$power" != "yes" ]]; then
    icon=" 󰂲"
    text="Bluetooth Off"
elif [[ -n "$connected" ]]; then
    icon=" 󰂰"
    text="Connected"
else
    icon=" "
    text="On"
fi

echo "{\"text\": \"$icon\", \"tooltip\": \"$text\", \"class\": \"bluetooth\"}"
