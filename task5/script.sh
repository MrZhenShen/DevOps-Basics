#!/bin/bash
sudo mkdir ~/folder1
sudo mkdir ~/folder2
sudo mv /vagrant/super-service.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start super-service
sudo systemctl enable super-service
