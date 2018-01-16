#!/bin/bash

echo "This will install pacaur"
pacman -S expac yajl --noconfirm
gpg --list-keys
echo -e "\nkeyring /etc/pacman.d/gnupg/pubring.gpg" >> ~/.gnupg/gpg.conf
#gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53

echo "for doing the following you need to enable mkepkg as root"
echo "calling other script"
sudo ./install_pacaur_pkg.sh
