#!/bin/bash

echo "Updating and upgrading apt-get"

sudo apt-get update -y; 
sudo apt-get upgrade -y;

echo "Installing essential packages.."

sudo apt-get install -y xdotool
sudo apt-get install -y neofetch
sudo apt-get install -y lolcat
sudo apt-get install -y nala
sudo apt-get install -y gedit
sudo apt-get install -y cmake
sudo apt-get install -y gpart
sudo apt-get install -y gparted
sudo apt-get install -y redshift
sudo apt-get install -y net-tools
sudo apt-get install -y firefox-esr
sudo apt-get install -y brightnessctl
sudo apt-get install -y libasound2-plugins
sudo apt-get install -y apparmor-utils
sudo apt-get install -y selinux-utils
sudo apt-get install -y dbus-* --no-install-recommends
sudo apt-get install -y grub2 grub2-common

echo "Symlinking lolcat binary"

sudo ln -s /usr/games/lolcat /usr/local/bin

exit 0;
