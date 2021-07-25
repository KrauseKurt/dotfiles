#!/usr/bin/env bash

## Remove apt locks if any
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo apt update -y
sudo apt upgrade -y

#Repository

sudo apt install guake vlc flatpak htop neofetch tilix fonts-powerline curl wget gnome-tweaks apt-transport-https gnome-session inkscape ruby qbittorrent zsh snapd steam fonts-cantarell speedtest-cli virtualbox refind -y
