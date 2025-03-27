#!/bin/bash

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up /etc/default/grub

cd ..
cd src
cd etc.default

echo Removing current /etc/default/grub

sudo rm -rf /etc/default/grub

echo Placing current /etc/default/grub

sudo cp -rf grub /etc/default/grub

echo Removing current /etc/default/grub.d

sudo rm -rf /etc/default/grub.d

sleep 3;

cat /etc/default/grub
ls /etc/default/grub.d

exit 0;