#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

sudo apt-get build-dep blueman -y

# Instala todos modulos de configsudo
sudo apt-get install blueman --no-install-recommends --no-install-suggests -y --allow-unauthenticated
sudo apt-get install libcaja* caja-actions* nautilus-data libnautilus-extension-dev nemo-python -y --allow-unauthenticated

exit 0
