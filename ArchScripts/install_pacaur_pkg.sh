#!/bin/bash

echo "This helps installing cower and pacaur"
sudo git clone https://aur.archlinux.org/cower.git 
sudo git clone https://aur.archlinux.org/pacaur.git
sudo chmod -R 777 cower/
sudo chmod -R 777 pacaur/
cd cower
su -c "makepkg -fs --noconfirm" keanue
sudo pacman -U *.xz --noconfirm
cd ..

cd pacaur
su -c "makepkg -fs --noconfirm" keanue
sudo pacman -U *.xz --noconfirm
#su -c "makepkg -si" keanue
cd ..
sudo rm -r pacaur cower
