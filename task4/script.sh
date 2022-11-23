#!/bin/bash
sudo useradd -p $(openssl passwd -6 -salt xyz adminuser) -m adminuser
sudo usermod -aG sudo adminuser
sudo useradd -m poweruser
sudo passwd -d poweruser
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
sudo usermod -aG adminuser poweruser
ln -s /home/poweruser/etc/mtab softlink