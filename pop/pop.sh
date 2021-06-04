#!/usr/bin/env bash

## Remove apt locks if any
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo apt update -y
sudo apt upgrade -y

#Repository

sudo apt install guake vlc flatpak htop neofetch tilix fonts-powerline curl wget gnome-tweaks apt-transport-https gnome-session inkscape ruby qbittorrent zsh snapd steam lutris -y

run flatpak.sh
run snapd.sh
run 3rdparty.sh

nvm install 16
npm install -g yarn
yarn --version
npm install -g nodemon

copy .fonts to home and run install font script
