#!/bin/bash

cd /home/rsp/Space/development/rsp/@scripts

sudo rm -rf /etc/systemd/system/check-os-release.service
sudo cp -rf asset/check-os-release.service /etc/systemd/system

sudo systemctl enable check-os-release

systemctl status check-os-release

cat /etc/systemd/system/check-os-release.service

exit 0
