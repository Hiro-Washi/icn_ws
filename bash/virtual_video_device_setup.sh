#!/bin/bash

# If you have older version, purge it
sudo modprobe -r v4l2loopback

# Install required packages
sudo apt update
sudo apt install -y git build-essential dkms linux-headers-$(uname -r) v4l2loopback-dkms

# Clone v4l2loopback from GitHub
git clone https://github.com/umlaeute/v4l2loopback.git
cd v4l2loopback

# Compile and install the module
make && sudo make install

# Load the v4l2loopback module with 4 devices
# "echo" for using also after reboot PC
echo "options v4l2loopback devices=4 video_nr=0,1,2,3 exclusive_caps=1" | sudo tee -a /etc/modprobe.d/v4l2loopback.conf
echo v4l2loopback | sudo tee -a /etc/modules-load.d/modules.conf


