#!/bin/bash
# run as sudo
if [ `whoami` != root ]; then
    echo Please run as sudo
    exit
fi

# Sets wired device up and enables dhcpcd
# TODO up all interfaces instead of only one
IFACE=$(ip link | awk '/enp/ { gsub (":",""); print $2 }')
echo "Enabling $IFACE and dhcpcd"
ip link set dev $IFACE up
systemctl start dhcpcd
systemctl enable dhcpcd
