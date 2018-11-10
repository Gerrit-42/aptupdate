#!/bin/bash
sudo zfs snapshot -r "rpool@$(date +%Y%m%d_%H%M)-updates"
sudo zfs destroy -rv rpool/swap@%
sudo apt update
sudo apt autoremove -y
sudo apt upgrade -y
sudo apt autoremove -y
echo "***"
echo "************Consider a reboot?***********"
echo "***"
