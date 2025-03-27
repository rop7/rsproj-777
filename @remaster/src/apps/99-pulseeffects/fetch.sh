#!/bin/bash

echo Deleting existing ./proj directory within 7sec...
echo Tap CONTROL + C to cancel it now!

sleep 3;

rm -rf ./proj

wget https://github.com/wwmm/easyeffects/archive/refs/tags/v4.8.7.zip
unzip v4.8.7.zip

mv easyeffects-4.8.7 proj
rm -rf v4.8.7.zip*

ls ./proj

exit 0;
