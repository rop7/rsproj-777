#!/bin/bash

echo "Uninstalling unecessary packages maybe installed"

    sudo apt-get remove kdeconnect* -y --purge
    sudo apt-get remove plasma-discover* -y --purge
    sudo apt-get remove plasma-welcome -y --purge
    sudo apt-get remove plasma-emojier -y --purge
    sudo apt-get remove xwaylandvideobridge -y --purge

exit 0