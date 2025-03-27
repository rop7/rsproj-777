#!/usr/bin/env bash
apt-getGetCommands=(update dist-upgrade autoremove autoclean)
for apt-getGetCommand in ${apt-getGetCommands[@]}
do
        sudo apt-get ${apt-getGetCommand} -y
done
exit 0