#!/bin/bash
PASSWORD=$(openssl rand -base64 12)
echo "Attention! Remember your password: $PASSWORD"

useradd -p $PASSWORD -m adminuser
usermod -aG sudo adminuser
useradd -m poweruser
passwd -d poweruser
echo "poweruser ALL=(ALL:ALL) /usr/sbin/iptables" >> /etc/sudoers
usermod -aG adminuser poweruser
ln -s /home/poweruser/etc/mtab softlink