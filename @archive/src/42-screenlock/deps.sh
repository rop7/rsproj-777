#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

sudo apt-get build-dep swaylock -y

# Instala todos modulos de configsudo
sudo apt-get install xkb* -y
sudo apt-get install libpam0g-dev -y
sudo apt-get install scdoc -y

exit 0
