#!/bin/bash
DIR=~/.ssh/

# Create ssh key pair

## Create ssh via email and location
create_ssh_key(){
    echo "Creating SSH key pair"
    printf "Enter your email:\n"
    read EMAIL
    printf "Enter key filename (Press Enter for Default):\n"
    read FILENAME
    if [[$FILENAME = "" ]]; then
        echo "Using default id_rsa filename"
        FILENAME="id_rsa"
    else
        echo "SSH key $DIR$FILENAME copied to clipboard"
    fi
    ssh-keygen -t rsa -b 4096 -C $EMAIL -f $DIR$FILENAME
}

## Print available keys
get_available_keys(){
    echo "These are the available files:"
    ls ~/.ssh/*
    echo "Choose key to copy to clipboard:\n"
    read FILENAME
}

## Copy key
copy_key(){
    xclip -sel clip < $DIR$FILENAME.pub
    echo "SSH key copied to clipboard"
    echo "Upload the SSH key in github and gitlab"
}

## Update /.ssh/.config
update_config_file(){
    echo "Host (eg. es.github.com/git.annex.leidos.com):\n"
    read HOST
    echo "Hostname (eg. github.com/git.annex.leidos.com):\n"
    read HOSTNAME
    touch $DIR\config
    printf "Host $HOST\nHostName $HOSTNAME\nPreferredAuthentications publickey\nIdentityFile $DIR$FILENAME\n" >> $DIR\config
}

## Create key control
printf "Do you want to generate new SSH key pair? y/n\n"
read CONTRL

case $CONTRL in
    yes|y)
        create_ssh_key
        ;;
    no|n)
        get_available_keys
        ;;
    *) 
        echo "Type yes/y or no/n"
        exit
        ;;
esac


## Copy key to clipboard
copy_key

## Update .ssh/.config
printf "Update .config file? y/n\n"
read CONTRL

case $CONTRL in
    yes|y)
        update_config_file
        ;;
    no|n)
        ;;
    *) 
        echo "Type yes/y or no/n"
        exit
        ;;
esac
