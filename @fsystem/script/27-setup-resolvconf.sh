#!/bin/bash

sudo rm -rf /etc/resolv.conf

echo "nameserver 127.0.0.1" >> /etc/resolv.conf
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

exit 0