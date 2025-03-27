#!/bin/bash

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up /etc/NetworkManager/conf.d/wifi-powersave-off.conf

cd ..
cd src
cd etc.NetworkManager

echo Removing current /etc/NetworkManager/conf.d/wifi-powersave-off.conf

sudo mkdir -p /etc/NetworkManager/conf.d

sudo rm -rf /etc/NetworkManager/conf.d/wifi-powersave-off.conf

echo Placing current /etc/NetworkManager/conf.d/wifi-powersave-off.conf

sudo cp -rf conf.d/wifi-powersave-off.conf /etc/NetworkManager/conf.d;

exit 0;