#!/bin/bash

CHOICE=$(echo -e "Option 1\nOption 2\nOption 3" | walker)

case "$CHOICE" in
  "Option 1")
    ~/Git/dotfiles/scripts/power-profiles/cpu-auto.sh
    ;;
  "Option 2")
    ~/.config/waybar/scripts/script2.sh
    ;;
  "Option 3")
    ~/.config/waybar/scripts/script3.sh
    ;;
esac
