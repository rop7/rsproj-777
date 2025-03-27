#!/bin/bash

sudo apt list --installed -a '*-dev' | grep "^[^\ ]*/" -o | sed 's/\///' | xargs -I '{}' sudo apt remove -y '{}'
sudo apt-get autoremove -y --purge;
sudo apt-get clean;

exit 0;
