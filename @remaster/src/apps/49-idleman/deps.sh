#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala todos modulos de configsudo
sudo apt-get install xkb* -y
sudo apt-get install libpam0g-dev -y
sudo apt-get install scdoc -y

exit 0