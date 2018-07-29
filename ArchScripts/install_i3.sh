#!/bin/bash

echo "This is a script that will set minimal xorg and i3"
echo "Install needed components"
#pacman -Sy --noconfirm xorg
#pacman -Sy --noconfirm i3

echo "After this you should be logged in as the USER not root"
#cd ~/
#touch .xinitrc
#echo exec i3 > .xinitrc

echo "Create a temporalRepo dir to land personal i3 config"
mkdir tempRepos
cd tempRepos
mkdir dotfiles
git clone https://github.com/sdmunozsierra/dotfiles.git dotfiles
cd tempRepos
cd dotfiles
cd i3
cd ..
cd ..
cd ..
rm -r tempRepos

echo "Copy new files and backup old ones"
cp config ~/.config/i3/config.new
cp i3status.conf ~/.config/i3/i3status.conf.new
cd ~/.config/i3/
cp config config.bak
cp i3status.conf.bak
cp config.new config
cp i3status.conf.new i3status.conf
echo "Cleaning up"
rm config.new
rm i3status.conf.new

echo "Install pacaur"
sudo ./install_pacaur.sh

pacaur -S --noconfirm i3-gaps
