#!/bin/bash

echo "This has everything automated for all your essential programs"
echo "Warning, it will accept all dependencies"

wait 2
echo "Update the system"
pacman -Syyu

echo "Installing base-dev"
pacman -Sy --noconfirm --needed base-devel

echo "Installing expac-git for aurman (pacaur replacement U_U)"
pacman -needed --noconfirm -Syu git
git clone https://aur.archlinux.org/expac-git.git
cd expac-git/
makepkg -si --needed --noconfirm
cd ..
rm -rf expac-git/

echo "Installing gpg keys for aurman"
gpg --recv-keys 465022E743D71E39

echo "Installing aurman"
git clone https://aur.archlinux.org/aurman-git.git
cd aurman-git/
makepkg -si --needed --noconfirm
cd ..
rm -rf aurman-git/

echo "aurman config"
mkdir -p ~/.config/aurman/
printf "[miscellaneous]\nshow_changes\ndo_everything\nuse_ask\nkeyserver=hkp://ipv4.pool.sks-keyservers.net:11371\n" > ~/.config/aurman/aurman_config

echo "updating mirrors"
aurman --needed --noconfirm --noedit -Syu reflector
reflector --latest 100 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo "Restoring user preferences"
mkdir -p ~/Data/Git/
cd ~/Data/Git/
git clone https://github.com/sdmunozsierra/dotfiles.git
cd dotfiles/config/
cp . ~/

echo "Installing all essential programs"
cd ..
cd notes/ArchScripts/
aurman --needed --noconfirm -S $(cat workpkglist.txt | xargs)

echo "Applying config"
cd ~/
source .bashrc
source .bash_aliases

echo "Installing Vim plugins"
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
sh ./install.py --all

echo "finished"
