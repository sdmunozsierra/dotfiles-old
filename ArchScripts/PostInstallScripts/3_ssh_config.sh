#!/bin/bash

# Create ssh key pair
# Ask user if new key pair is needed
printf "Do you want to generate new SSH key pair? y/n\n"
read  CONTRL

case $CONTRL in
    yes|y)
        echo "Creating SSH key pair"
        printf "Enter your email:\n"
        read  EMAIL
        ssh-keygen -t rsa -b 4096 -C $EMAIL
        ;;
    no|n)
        ;;
    *) 
        echo "Type yes/y or no/n"
        exit
        ;;
esac
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "SSH key copied to clipboard"
echo "Upload the SSH key in github and gitlab"
