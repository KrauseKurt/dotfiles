#!/bin/bash

brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)
percent=$(( brightness * 100 / max_brightness ))

# Choose icon based on brightness
if [ "$percent" -le 20 ]; then
    icon=" 󰃞"  # low
elif [ "$percent" -le 50 ]; then
    icon=" 󰃟"  # medium
else
    icon=" 󰃠"  # high
fi

echo "{\"text\": \"$icon $percent%\", \"tooltip\": \"Brightness: $percent%\"}"
