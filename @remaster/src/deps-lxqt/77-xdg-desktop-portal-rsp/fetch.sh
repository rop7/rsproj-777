#!/bin/bash

echo Deleting existing ./proj directory within 7sec...
echo Tap CONTROL + C to cancel it now!

sleep 3;

rm -rf ./proj

git clone https://github.com/lxqt/xdg-desktop-portal-lxqt.git

mv xdg-desktop-portal-lxqt proj

ls ./proj

exit 0;
