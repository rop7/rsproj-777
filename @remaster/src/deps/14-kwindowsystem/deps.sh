#!/bin/bash

## declare install comands of projetcts dependencies
## like: sudo apt-get install -y <package> in breaklineds

echo "Running deps.sh"

sudo apt-get build-dep kwindowsystem -y

sudo apt install plasma-wayland-protocols -y
sudo apt install libxcb-xfixes0-dev -y
sudo apt install libxcb-res0-dev -y
sudo apt install libxcb-icccm4-dev -y
sudo apt install libxcb-keysyms1-dev -y

exit 0