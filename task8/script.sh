#!/bin/bash
yum -y update
yum -y install httpd mod_ssl
yum install firewalld

mkdir /var/www/zhen.com

cp -f /vagrant/www-content/index.html /usr/share/httpd/noindex/index.html

systemctl enable firewalld
systemctl start firewalld
firewall-cmd --state

systemctl start httpd
systemctl enable httpd

cp -f /vagrant/localhost.conf /etc/httpd/conf.d/

apachectl configtest
systemctl reload httpd

firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/pki/tls/private/apache-selfsigned.key -out /etc/pki/tls/certs/apache-selfsigned.crt -subj "/C=UA/ST=Lvivska/L=Lviv/O=ITStep/OU=University/CN=127.0.0.1"
