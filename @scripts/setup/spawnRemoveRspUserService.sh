#!/bin/bash

cd /home/rsp/Space/development/rsp/@scripts

sudo rm -rf /etc/systemd/system/remove-rsp-user.service
sudo cp -rf asset/remove-rsp-user.service /etc/systemd/system

sudo systemctl enable remove-rsp-user

systemctl status remove-rsp-user

cat /etc/systemd/system/remove-rsp-user.service

exit 0
