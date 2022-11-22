#!/bin/bash
sudo useradd -p $(openssl passwd -6 -salt xyz adminuser) adminuser
sudo usermod -aG sudo adminuser

sudo useradd poweruser
sudo passwd -d poweruser
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
# setfacl -m g:poweruser:rx /home/adminuser
sudo usermod -aG adminuser poweruser
ln -s /home/poweruser/etc/mtab softlink
