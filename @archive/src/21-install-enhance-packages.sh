#!/bin/bash

echo "Installing enchance packages.."

sudo apt-get install -y tlp*
sudo apt-get install -y zram-tools

echo "Encabling enchance packages services.."

sudo systemctl enable tlp
sudo systemctl enable zramswap

exit 0;