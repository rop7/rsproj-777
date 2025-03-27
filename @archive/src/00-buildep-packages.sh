#!/bin/bash

# first level deps

sudo apt-get build-dep -y gtk3-nocsd-3
sudo apt-get build-dep -y kwindowsystem
sudo apt-get build-dep -y layer-shell-qt
sudo apt-get build-dep -y libdisplay-info
sudo apt-get build-dep -y libexecinfo
sudo apt-get build-dep -y libkscreen
sudo apt-get build-dep -y libliftoff
sudo apt-get build-dep -y wlroots

# lxqt deps

sudo apt-get build-dep -y libfm-qt
sudo apt-get build-dep -y libqtxdg
sudo apt-get build-dep -y libsysstat
sudo apt-get build-dep -y qtxdg-tools
sudo apt-get build-dep -y lxqt-build-tools

# lxqt apps

sudo apt-get build-dep -y pavucontrol-qt
sudo apt-get build-dep -y pcmanfm-qt
sudo apt-get build-dep -y qterminal

# first level apps

sudo apt-get build-dep -y labwc
sudo apt-get build-dep -y fuzzel
sudo apt-get build-dep -y blueman
sudo apt-get build-dep -y network-editor-nm


exit 0