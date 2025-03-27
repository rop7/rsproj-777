#!/bin/bash

sudo ./00-install-essential-packages.sh
sudo ./03-install-basic-build-packages.sh
sudo ./07-install-setup-nodejs.sh
sudo ./10-install-desktop-packages.sh
sudo ./14-install-essential-libraries.sh

exit 0