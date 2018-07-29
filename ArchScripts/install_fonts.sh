#!/bin/bash

#install hack font and set as system
sudo pacman -S --noconfirm ttf-hack
fc-cache

#install inconsolata (programming font)
pacaur -S --noconfirm ttf-inconsolata

#install firasans (because I love it <3)
pacaur -S --noconfirm ttf-fira-sans

#install awesome fonts (because ICONS)
pacaur -S --noconfirm ttf-font-awesome
