#!/bin/bash

# Atualiza a lista de pacotes
sudo apt-get update

# Instala todos modulos de configsudo
sudo apt-get install -y libkf6co*

# Encontra e instala pacotes de desenvolvimento que começam com libkf6
sudo apt-get install --no-install-suggests -y $(apt-get list libkf6* 2>/dev/null | grep -o '^libkf6[^/]*-dev')

exit 0