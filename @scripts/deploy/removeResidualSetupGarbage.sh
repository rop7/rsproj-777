#!/bin/bash

echo "Removing residual build-setup time garbage"

    sudo rm -rf /tmp/*
    sudo rm -rf /var/cache/*
    sudo rm -rf /var/tmp/*
    sudo rm -rf /root/.cache
    sudo rm -rf /root/.bash_history
    sudo rm -rf /home/dev/.cache
    sudo rm -rf /home/dev/.bash_history
    sudo rm -rf /home/rsp/.cache
    sudo rm -rf /home/rsp/.bash_history

exit 0;