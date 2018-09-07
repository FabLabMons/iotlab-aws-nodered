#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum install -y gcc-c++ make nodejs git
npm install node-red aws-sdk node-red-contrib-storage-s3 node-red-contrib-mapper node-red-contrib-ttn node-red-dashboard when 

sudo cp node-red.service /etc/systemd/system/node-red.service
sudo systemctl enable node-red.service
sudo systemctl start node-red.service
sudo systemctl status node-red.service
