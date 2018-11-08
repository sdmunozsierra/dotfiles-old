#!/bin/bash
# .make.sh

########## Variables

gitdir=~/Data/Git/dotfiles/ou       # old dotfiles backup directory
files="bash_aliases bash_profile bashrc vimrc zshrc Xresources config/i3/config"
#folders="Data/ArchScripts/"

# Change to the dotfiles directory
cd $HOME
# Copy to git
for file in $files; do
    cp ~/.$file $gitdir
done

#cd $HOME
#for folder in $folders;do
    #cp -a $folder $gitdir
#done
