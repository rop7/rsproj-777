#!/bin/bash

sudo rm -rf /etc/systemd/system/getty@tty1.service.d/override.conf

sudo echo "[Service]" >> /etc/systemd/system/getty@tty1.service.d/override.conf
sudo echo "ExecStart=" >>  /etc/systemd/system/getty@tty1.service.d/override.conf
sudo echo 'ExecStart=-/sbin/agetty --nonewline --noissue --autoclear %I $TERM --session-tty 1' >>  /etc/systemd/system/getty@tty1.service.d/override.conf

sudo systemctl enable getty@*

exit 0;
