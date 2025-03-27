#!/bin/bash

cd /home/rsp/Space/development/rsproj/@scripts;

echo "Updating & upgrading packages"

#    sudo apt-get update
#    sudo apt-get upgrade -y;

echo "Removing & purging non-needed packages"

#    sudo apt-get autoremove --purge -y;
    sudo apt-get autoclean -y;
    sudo apt-get clean -y;
    sudo nala clean;

exit 0;
