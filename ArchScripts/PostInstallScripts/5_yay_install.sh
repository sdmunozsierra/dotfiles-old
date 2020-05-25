#!/bin/bash

GIT_DIR=~/Data/Git

mkdir -p $GIT_DIR
git clone https://aur.archlinux.org/yay.git $GIT_DIR/yay
cd $GIT_DIR/yay
makepkg -si

# Update the system
sudo pacman -Syyu
