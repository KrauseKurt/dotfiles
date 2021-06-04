#!/usr/bin/env bash

## Remove apt locks if any
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# "Apts"
# You can install all the applications on a single apt command "sudo apt install app1 app2 app3 -y"
sudo apt install guake -y
sudo apt install vlc -y
sudo apt install flatpak -y
sudo apt install htop -y
sudo apt install neofetch -y
sudo apt install tilix -y
sudo apt install speedtest-cli -y
sudo apt install fonts-powerline -y
sudo apt install curl -y
sudo apt install wget -y
sudo apt install gnome-tweaks -y
sudo apt install apt-transport-https -y
sudo apt install gnome-session -y
sudo apt install libgtk-3-dev -y
sudo apt install inkscape -y
sudo apt install ruby -y
sudo apt install qbittorrent -y
sudo apt install zsh -y

## Flatpaks
flatpak install flathub com.unity.UnityHub -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.kde.krita -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.axosoft.GitKraken -y
flatpak install flathub com.github.debauchee.barrier -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub com.basemark.BasemarkGPU -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.sublimemerge.App -y
flatpak install flathub org.gabmus.hydrapaper -y

## Install nodejs/npm i hate snaps but life is life
sudo apt install snapd
sudo snap install node --channel=15/stable --classic

firefox -new-tab "https://github.com/shiftkey/desktop/releases"
firefox -new-tab "https://discord.com/download"
firefox -new-tab "https://code.visualstudio.com/download"
firefox -new-tab "https://www.google.com/intl/pt-BR/chrome/"
firefox -new-tab "https://ohmyz.sh/"
firefox -new-tab "https://github.com/romkatv/powerlevel10k"
firefox -new-tab "https://github.com/vinceliuice/WhiteSur-gtk-theme"
firefox -new-tab "https://github.com/Jannomag/Yaru-Colors"
firefox -new-tab "https://github.com/the-via/releases/releases/"

## Post-install update and cleanup
sudo apt update && sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove -y
