#!/bin/bash
yum -y update
yum -y install httpd mod_ssl firewalld

cp -f /vagrant/www-content/index.html /usr/share/httpd/noindex/index.html
cp -f /vagrant/localhost.conf /etc/httpd/conf.d/

systemctl enable firewalld
systemctl start firewalld
firewall-cmd --state

systemctl enable httpd
systemctl start httpd

apachectl configtest
systemctl reload httpd

firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload

openssl req -x509 -nodes -days 365 -new -newkey rsa:2048 -keyout /etc/pki/tls/private/apache-selfsigned.key -out /etc/pki/tls/certs/apache-selfsigned.crt