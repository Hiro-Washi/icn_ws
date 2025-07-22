#!/bin/bash

HOST_NAME = "yokolab" 
sudo apt update

# Network settings
eth0_ipv4_addr = "10.130.2.1/24"
eth0_ipv4_gw = "10.130.2.254"
eth0_ipv4_dns = "10.130.0.2"
# Ethernet
nmcli con modify eth0 ipv4.method manual ipv4.addresses ${eth0_ipaddr} ipv4.gateway ${eth0_ipv4_gw} ipv4.dns ${eth0_ipv4_dns}

# Utils
sudo apt install net-tools wireshark tshark iperf3 vnstat tcpdump
sudo apt install ffmpeg
