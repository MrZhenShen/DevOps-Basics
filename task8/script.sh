#!/bin/bash
setenforce 0

yum -y update
yum install httpd -y
yum install mod_ssl -y

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/pki/tls/private/apache-selfsigned.key -out /etc/pki/tls/certs/apache-selfsigned.crt -subj "/C=UA/ST=Lvivska/L=Lviv/O=ITStep/OU=University/CN=127.0.0.1"

mkdir -p /var/www/zhenshen.com/html/
cp /vagrant/www-content/index.html /var/www/zhenshen.com/html/
cp /vagrant/zhenshen.conf /etc/httpd/conf.d/

# cat /vagrant/helper.txt >> /etc/httpd/conf/httpd.conf

systemctl start httpd
systemctl enable httpd

apachectl configtest
systemctl reload httpd
