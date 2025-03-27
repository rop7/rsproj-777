#!/bin/bash

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up /etc/pulse/daemon.conf

cd ..
cd src
cd etc.pulse

echo Removing current /etc/pulse/daemon.conf

sudo mkdir -p /etc/pulse

sudo rm -rf /etc/pulse/daemon.conf

echo Placing current /etc/pulse/daemon.conf

sudo cp -rf daemon.conf /etc/pulse

exit 0;