#!/bin/bash
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

CONFIG_FILE="/etc/network/interfaces"
echo "" >> $CONFIG_FILE
echo "allow-hotplug enp0s3" >> $CONFIG_FILE
echo "iface enp0s3 inet dhcp" >> $CONFIG_FILE
echo "" >> $CONFIG_FILE
echo "allow-hotplug enp0s8" >> $CONFIG_FILE
echo "iface enp0s8 inet static" >> $CONFIG_FILE
echo "    address 192.168.56.10/24" >> $CONFIG_FILE

sudo systemctl restart networking
ip a
