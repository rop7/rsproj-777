#!/bin/bash

echo "Installing secutiry packages.."

sudo apt-get install -y ufw
sudo apt-get install -y fail2ban
sudo apt-get install -y selinux-policy-default

sudo systemctl enable ufw
sudo systemctl enable selinux*
sudo systemctl enable fail2ban

exit 0;