#!/bin/bash
yum -y update
yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx
cp -f /vagrant/www-content/index.html /usr/share/nginx/html/index.html