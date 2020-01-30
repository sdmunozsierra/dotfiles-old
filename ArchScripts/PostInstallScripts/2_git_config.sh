#!/bin/bash

# Create GPG Keys
echo "Creating GPG keys"
#gpg --full-generate-key 

PUBKEY=$(gpg --list-secret-keys)
PUBKEY=$(echo $PUBKEY | awk '{print $9}')
echo $PUBKEY
#FULLKEY=gpg --armor --export $PUBKEY
echo "Paste the Public Key Block in Github."
#cp ~/Data/Git/dotfiles/config/.gitconfig ~

#PUBKEY=$(gpg --list-secret-keys --keyid-format LONG | awk '{print $0}')
#PUBKEY=$(gpg --list-secret-keys --keyid-format LONG | awk '/\// {print $0}')

# IFACE=$(ip link | awk '/enp/ { gsub (":",""); print $2 }')

# echo "Setting up Git environment"

#mkdir -p ~/Data/Git/
#cd ~/Data/Git/
#git clone https://github.com/sdmunozsierra/dotfiles.git
#cp dotfiles/config/.gitconfig ~
