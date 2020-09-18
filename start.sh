#!/bin/bash

sudo yum install -y git
sudo yum install -y nodejs
sudo mv /vagrant/mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo
sudo yum install -y mongodb-org
sudo systemctl start mongod
cd /home/vagrant/
git clone https://github.com/chpoullet/MEAN-web-app.git
cd MEAN-web-app/
npm install
node app.js &
