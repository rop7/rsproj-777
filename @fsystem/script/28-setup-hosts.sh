#!/bin/bash

rm -rf /etc/hosts

echo "127.0.0.1    rsp" >> /etc/hosts
echo "127.0.0.1    cubic" >> /etc/hosts
echo "127.0.0.1    localhost" >> /etc/hosts

rm -rf /etc/hostname

echo "rsp" >> /etc/hostname;

exit 0;
