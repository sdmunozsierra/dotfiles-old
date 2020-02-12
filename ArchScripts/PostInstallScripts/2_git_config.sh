#!/bin/bash

# Create GPG Keys
# Ask user if new keys are needed
printf "Do you want to generate new GPG keys? y/n\n"
read  CONTRL

case $CONTRL in
    yes|y)
        echo "Creating GPG keys"
        gpg --full-generate-key 
        ;;
    no|n)
        PRIVKEY=$(gpg --list-secret-keys --keyid-format LONG)
        PRIVKEY=$(echo $PRIVKEY | awk '{print $4}')
        PRIVKEY=${PRIVKEY#*/}
        #echo $PRIVKEY
        PUBKEY=$(gpg --armor --export $PRIVKEY)
        # Check that there are pubkeys
        [[ -z "$PUBKEY" ]] && echo -e "Pubkey not found!\nPlease run: gpg --list-secret-keys" && exit
        if hash xclip 2>/dev/null; then
            echo -n $PUBKEY | xclip -selection clipboard
            echo "Public key copied to clipboard"
        else
            echo "Please copy public key"
        fi
        echo "Upload the pubkey in github and gitlab"
        ;;
    *) 
        echo "Type yes/y or no/n"
        exit
        ;;
esac

printf "Enter your name:\n"
read  UNAME
printf "Enter your email:\n"
read  EMAIL
# Add the key to git config
git config --global user.email $EMAIL
git config --global user.name  $UNAME
git config --global user.signingkey $PRIVKEY
git config --global gpg.program gpg

# error: gpg signing failed: Inappropriate ioctl for device
export GPG_TTY=$(tty)
