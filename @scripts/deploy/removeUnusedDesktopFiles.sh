#!/bin/bash

cd /home/rsp/Space/development/rsproj/@scripts;

echo "Removing unecessary settings .desktop files"

    sudo rm -rf /usr/share/applications/cact.desktop
    sudo rm -rf /usr/share/applications/org.kde.mobile.plasmasettings.desktop
    sudo rm -rf /usr/share/applications/kdesystemsettings.desktop
    sudo rm -rf /usr/local/share/applications/rsp-config-input.desktop
    sudo rm -rf /usr/local/share/applications/rsp-config-globalkeyshortcuts.desktop
    sudo rm -rf /usr/share/applications/kvantum*
    sudo rm -rf /usr/share/applications/kdesystemsettings.desktop
    sudo rm -rf /usr/share/applications/fcitx*

echo "Fixing .desktop files"

    sudo rm -rf /usr/share/applications/cact.desktop
    sudo cp -rf ./asset/caja.desktop /usr/share/applications
    sudo rm -rf /usr/share/applications/nm-connection-editor.desktop
    sudo cp -rf ./asset/network-settings.desktop /usr/local/share/applications
    sudo rm -rf /usr/share/applications/org.kde.mobile.plasmasettings.desktop
    sudo cp -rf ./asset/org.kde.mobile.plasmasettings.desktop /usr/local/share/applications
    
exit 0;