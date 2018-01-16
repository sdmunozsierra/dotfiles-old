#!/bin/bash

echo "This has everything automated for all your favorite programs"
echo "Warning, it will accept all dependencies"
echo "But because you're very cauteous most of these programs do not have a lot of dependencies, exept big programs such as Firefox, eclipse."

wait 2
echo "Update the system"
#pacman -Syyu

echo "Installing base-dev"
#pacman -Sy --noconfirm --needed base-devel

echo "-->Installing Audio and Video Control"
echo "Installing alsa-utils"
#pacman -Sy --noconfirm alsa-utils
echo "Installing apulse (PulseAudio emulator)"
#pacaur -Sy --noconfirm apulse
echo "Install Libraries for apulse"
#pacaur -Sy --noconfirm apulse
echo "Install Libraries for dbus"
#pacaur -Sy --noconfirm dbus-glib
echo "Install Libraries for object-introspection"
#pacaur -Sy --noconfirm object-introspection

echo "-->Installing Network Tools"
echo "Using Script to install Network Manager"

echo "-->Installing System Tools"
echo "Installing htop" 
#pacman -S --noconfirm htop
echo "Installing xfce4-taskmanager" 
#pacman -S --noconfirm xfce4-taskmanager
echo "Installing rsync" 
#pacman -S --noconfirm rsync
echo "Installing xbacklight" 
#pacaur -S --noconfirm xorg-xbacklight
echo "Installing font viewer" 
#pacaur -S --noconfirm gtk2fontsel
echo "Installing pcmanfm" 
#pacman -S --noconfirm pcmanfm
echo "Installing feh" 
#pacman -Sy --noconfirm feh
echo "Installing screenshot"
#pacaur -S --noconfirm escrotum-git
echo "Installing galculator" 
#pacman -Sy --noconfirm galculator
echo "Installing gParted"
#pacman -Sy --noconfirm gparted
echo "Installing fontconfig"
#pacaur -S --noconfirm fontconfig
echo "Installing mupdf"
#TO-DO add path to script
echo "Installing ssh"
#pacman -Sy --noconfirm openssh

echo "-->Installing Command Line Tools"
echo "Installing wget"
#pacman -Sy --noconfirm wget
echo "Installing lynx"
#pacman -Sy --noconfirm lynx
echo "Installing git"
#pacman -Sy --noconfirm git
echo "Installing vim"
#pacman -Sy --noconfirm vim
echo "Installing vundle" 
#pacaur -Sy --noconfirm vundle
echo "Installing xclip" 
#pacman -Sy --noconfirm xclip
echo "Installing ranger (requires phyton)"
#pacman -Sy --noconfirm ranger


echo "-->Installing Programming Tools"
echo "Installing JavaFX Scene Builder by Gluon"
#pacaur -Sy --noconfirm gluon-scenebuilder
echo "Installing eclipse"
#pacman -Sy --noconfirm eclipse
echo "Installing android-studio"
#pacaur -Sy --noconfirm android-studio 


echo "-->Installing User Software"
echo "Installing firefox"
#pacman -Sy --noconfirm firefox
echo "Installing vivaldi browser"
#pacman -Sy --noconfirm vivaldi-snapshot
echo "Installing virtualBox"
#pacman -Sy --noconfirm virtualbox

echo "->>Optional Tools"
echo "Install brasero?"
#pacman -Sy brasero

echo "finished"
