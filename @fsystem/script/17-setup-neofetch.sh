#!/bin/bash

sudo apt install lolcat -y
sudo ln -sf /usr/games/lolcat /usr/local/bin

WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

    cd $HERE;

echo Setting up neofetch config...

    cd ..
    cd src
    cd etc.neofetch

echo $PWD

echo Removing current /etc/neofetch...

    sudo rm -rf /etc/neofetch

echo Spreading source neofetch to /etc...

    sudo mkdir -p /etc/neofetch
    sudo cp -rf * /etc/neofetch

neofetch;

exit 0; 

