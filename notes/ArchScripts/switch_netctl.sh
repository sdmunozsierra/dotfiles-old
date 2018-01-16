#!/bin/bash

sudo systemctl disable NetworkManager.service
sudo systemctl stop NetworkManager.service
sudo systemctl enable netctl.service
sudo systemctl start netctl.service
sudo systemctl enable netctl-auto@wlp3s0.service
sudo systemctl restart netctl-auto@wlp3s0.service
sudo systemctl enable dhcpcd@enp4s0f1.service
sudo wifi-menu
