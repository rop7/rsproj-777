#!/bin/bash

echo Deleting existing ./proj directory within 7sec...
echo Tap CONTROL + C to cancel it now!

sleep 3;

rm -rf ./proj

git clone https://github.com/lxqt/lxqt-config.git

mv lxqt-config proj

cd proj

git checkout 2.1.0
git switch -C 2.1.0

rm -rf .git

cd ..;

ls ./proj

exit 0;
