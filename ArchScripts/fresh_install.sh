#!/bin/bash

echo "This has everything automated for all your essential programs"
echo "Warning, it will accept all dependencies"

wait 2
echo "Update the system"
sudo pacman -Syyu

echo "Installing base-dev"
sudo pacman -Sy --noconfirm --needed base-devel

echo "Installing YAY (R.I.P. Pacaur)"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --needed --noconfirm
cd ..
rm -rf yay

# Pacman Stuff
yay -S reflector
sudo reflector --latest 100 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist
# TODO add color to pacman by enabling color on /etc/pacman.conf (copy that file)

echo "Restoring user preferences"
mkdir -p ~/Data/Git/
cd ~/Data/Git/
git clone https://github.com/sdmunozsierra/dotfiles.git
cd dotfiles
cp -r ArchScripts ~/Data/ArchScripts
cd config/
cp -r . ~/

echo "Installing all programs"
cd ..
cd notes/ArchScripts/
while read line
do
    yay -S --noconfirm --needed $line
done < workpkglist.txt

echo "Applying config"
cd ~/
source .bashrc
source .bash_aliases

echo "Installing Vim plugins"
cd ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git /bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
sh ./install.py --all

echo "finished"
