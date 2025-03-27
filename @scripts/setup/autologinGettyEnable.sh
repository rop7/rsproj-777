#!/bin/bash

sudo rm -rf /etc/systemd/system/getty@tty1.service.d/override.conf
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d

sudo echo "[Service]" >> /etc/systemd/system/getty@tty1.service.d/override.conf
sudo echo "ExecStart=" >>  /etc/systemd/system/getty@tty1.service.d/override.conf
sudo echo 'ExecStart=-/sbin/agetty --skip-login --nonewline --noissue --autologin rsp --noclear %I $TERM' >> /etc/systemd/system/getty@tty1.service.d/override.conf

sudo systemctl enable getty@tty1.service

exit 0;
