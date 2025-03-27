#!/bin/bash

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up /etc/grub.d

cd ..
cd src
cd etc.grub.d

echo Removing current /etc/grub.d

sudo rm -rf /etc/grub.d

echo Placing current /etc/grub.d

sudo cp -rf * /etc/grub.d

sleep 3;

ls /etc/grub.d

exit 0;