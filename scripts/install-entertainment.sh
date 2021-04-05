#!/usr/bin/env bash

## Remove apt locks if any
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# "Apts"
# You can install all the applications on a single apt command "sudo apt install app1 app2 app3 -y"
sudo apt install steam -y
sudo apt install lutris -y

## Flatpaks
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub net.runelite.RuneLite -y
flatpak install flathub com.stremio.Stremio

## Post-install update and cleanup
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
