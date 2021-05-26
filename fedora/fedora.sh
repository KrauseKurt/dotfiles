#!/usr/bin/env bash

sudo dnf update

setup quicker dnf

sudo dnf install vlc flatpak htop neofetch tilix curl wget gnome-tweaks inkscape qbittorrent zsh

Setup rpmfusion
https://rpmfusion.org/Configuration

#Flatpaks
#Setup flathub
https://flatpak.org/setup/Fedora/
run flatpak.sh

#Snapd
sudo dnf install snapd
run snapd.sh

run 3rdparty.sh

nvm install 16
npm install -g yarn
yarn --version
npm install -g nodemon

copy .fonts to home and run install font script
