#!/bin/bash

make

sudo make install DESTDIR=/
sudo rm -rf /usr/share/applications/live-installer.desktop

exit 0;
