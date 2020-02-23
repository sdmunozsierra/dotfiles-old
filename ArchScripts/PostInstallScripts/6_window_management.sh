#!/bin/bash

GIT_DIR=~/Data/Git

##i3 installation and xorg related
#yay -S --noconfirm --needed i3-gaps-next-git
#yay -S --noconfirm --needed i3blocks-git
#yay -S --noconfirm --needed i3blocks-contrib-git
#yay -S --noconfirm --needed betterlockscreen-git
#yay -S --noconfirm --needed nitrogen
#yay -S --noconfirm --needed arandr
#yay -S --noconfirm --needed picom-git
#yay -S --noconfirm --needed dmenu2
#yay -S --noconfirm --needed rofi
#yay -S --noconfirm --needed xdotool
#yay -S --noconfirm --needed yad
#yay -S --noconfirm --needed sysstat
#yay -S --noconfirm --needed python-pip

## Dmenu scripts
DMENU_SCRIPTS=~/Data/Git/dmenu-scripts-collection

git clone https://github.com/jukil/dmenu-scripts-collection.git $GIT_DIR/dmenu-scripts-collection

# Update script to work with rofi
sed -i "s/| dmenu/| rofi -dmenu/g" $DMENU_SCRIPTS/dmenu-recent-aliases/dmenu_recent_aliases

chmod +x $DMENU_SCRIPTS/dmenu-recent-aliases/dmenu_recent_aliases

sudo ln -s $DMENU_SCRIPTS/dmenu-recent-aliases/dmenu_recent_aliases /usr/bin/dmenu_recent_aliases

## i3 WM Scripts
#I3_SCRIPTS=~/Data/Git/i3-wm-scripts
#git clone https://github.com/MicahChambers/i3-wm-scripts.git $I3_SCRIPTS
#sudo ln -s $I3_SCRIPTS/nextfind /usr/bin/nextfind
