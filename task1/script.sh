#!/bin/bash
sudo yum -y update
sudo yum install -y epel-release
sudo yum install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo cp -f /vagrant/www-content/index.html /usr/share/nginx/html/index.html