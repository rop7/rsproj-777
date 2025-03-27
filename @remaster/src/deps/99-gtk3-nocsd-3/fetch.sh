#!/bin/bash

echo Deleting existing ./proj directory within 7sec...
echo Tap CONTROL + C to cancel it now!

sleep 3;

rm -rf ./proj

git clone https://github.com/PCMan/gtk3-nocsd.git

mv gtk3-nocsd proj

ls ./proj

exit 0;
