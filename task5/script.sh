#!/bin/bash
sudo mkdir ~/folder1
sudo mkdir ~/folder2
sudo mv /vagrant/mover-service.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start mover-service
sudo systemctl enable mover-service
