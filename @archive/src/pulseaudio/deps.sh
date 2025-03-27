#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala todos modulos de configsudo
sudo apt-get install blueman --no-install-recommends --no-install-suggests -y
sudo apt-get install libcaja* caja-actions* nautilus-data libnautilus-extension-dev nemo-python -y

exit 0