#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum install -y gcc-c++ make nodejs git
npm install

sudo cp node-red.service /etc/systemd/system/node-red.service
sudo systemctl enable node-red.service
sudo systemctl start node-red.service
sudo systemctl status node-red.service
