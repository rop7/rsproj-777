#!/bin/bash

echo "Installing desktop packages...";

sudo apt-get install -y qt6-*
sudo apt-get install -y qt5-*
sudo apt-get install -y xdg-desktop-portal-wlr
sudo apt-get install -y kf5-messagelib-data
sudo apt-get install -y breeze breeze-cursor-theme breeze-icon-theme
sudo apt-get install -y wayland*
sudo apt-get install -y xcb*
sudo apt-get install -y xkb*
sudo apt-get install -y wayland*
sudo apt-get install -y xwayland
sudo apt-get install -y xwayland-run
sudo apt-get install -y kwin-wayland --no-install-suggests;
sudo apt-get install -y kwin-common --no-install-suggests --no-install-recommends;
sudo apt-get install -y plasma-settings --no-install-suggests --no-install-recommends;
sudo apt-get install -y plasma-desktop --no-install-suggests --no-install-recommends;

# Essential libs
sudo apt-get install -y libgl1-mesa-glx
sudo apt-get install -y libgl1-mesa-dri
sudo apt-get install -y libgl1-nvidia-tesla-470-glvnd-glx
sudo apt-get install -y libexif-* --no-install-recommends
sudo apt-get install -y libmenu-cache*
sudo apt-get install -y libfcft4t64
sudo apt-get install -y wireguard-tools

sudo apt-get autoremove -y --purge;

exit 0;