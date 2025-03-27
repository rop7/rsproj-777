#!/bin/bash

echo "Installing npm..."

sudo apt-get install npm -y;

echo "Installing n..."

sudo npm install -g n;

echo "Installing Node.js 18 from n..."

sudo n 18;

echo "Removing non local node & npm binaries"

sudo apt-get remove nodejs npm -y;

echo "Installing global npm packages from npm..."

sudo npm install -g pm2;
sudo npm install -g chalk;
sudo npm install -g shelljs;
sudo npm install -g inquirer;
sudo npm install -g typescript;

echo "Istalling @RSp libjscript"

cd /home/rsp/Space/development/rsproj/@libjscript

npm install;

sudo npm install -g /home/rsp/Space/development/rsproj/@libjscript

exit 0;
