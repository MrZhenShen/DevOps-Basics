#!/bin/bash
cp /vagrant/sysinfo.sh /root/
cp /vagrant/mycron /etc/cron.d/
chmod +x /root/sysinfo.sh
systemctl restart cron