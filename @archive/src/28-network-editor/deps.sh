#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

sudo apt-get build-dep nm-tray -y
sudo apt-get build-dep nm-connection-editor -y
sudo apt-get install -y appstream-util

# Instala todos modulos de configsudo
sudo apt-get install -y file-roller
sudo apt-get install -y yelp-tools
sudo apt-get install -y libyelp-dev
sudo apt-get install -y libwebkitgtk-6.0-dev
sudo apt-get install -y libsoup-3.0-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libjson-glib-dev

exit 0
