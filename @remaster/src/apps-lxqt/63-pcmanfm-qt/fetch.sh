#!/bin/bash

echo Deleting existing ./proj directory...

rm -rf ./proj

git clone https://salsa.debian.org/lxqt-team/pcmanfm-qt.git

mv pcmanfm-qt proj

ls ./proj

exit 0;
