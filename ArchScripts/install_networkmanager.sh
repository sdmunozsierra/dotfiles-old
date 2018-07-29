#!/bin/bash
echo "This will install and configure Network Manager"
echo "I Will assume you have netctl as default"
sudo pacman -S networkmanager network-manager-applet
sudo systemctl disable netctl
sudo systemctl enable networkmanager

