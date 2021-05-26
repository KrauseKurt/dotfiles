#!/usr/bin/env bash

sudo apt install zsh curl wget htop neofetch git tmux sshfs -y
sudo apt install snapd -y

sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
