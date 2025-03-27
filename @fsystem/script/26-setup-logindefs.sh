#!/bin/bash

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up /etc/login.defs

cd ..
cd src

echo Removing current /etc/login.defs

sudo rm -rf /etc/login.defs

echo Placing current /etc/login.defs

sudo cp -rf etc.login.defs /etc/login.defs

sleep 3;

cat /etc/login.defs

exit 0;