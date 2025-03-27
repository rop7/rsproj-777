#!/bin/bash

# Este script remove kernels antigos não utilizados

# Verifica o kernel em uso
current_kernel=$(uname -r)

# Lista todos os kernels instalados, mas ignora o kernel em uso
kernels_to_remove=$(dpkg --list | grep -E 'linux-image-[0-9]' | awk '{print $2}' | grep -v "$current_kernel")

if [ -z "$kernels_to_remove" ]; then
    echo "Não há kernels antigos para remover."
    exit 0
fi

# Exibe os kernels que serão removidos
echo "Os seguintes kernels serão removidos:"
echo "$kernels_to_remove"

# Confirma a remoção com o usuário
read -p "Você tem certeza de que deseja remover esses kernels? [s/N]: " confirm

if [[ ! "$confirm" =~ ^[sS]$ ]]; then
    echo "Operação cancelada."
    exit 0
fi

# Remove os kernels antigos
sudo apt purge --assume-yes $kernels_to_remove

# Atualiza o GRUB para refletir as mudanças
sudo update-grub

# Remove pacotes não necessários após a remoção dos kernels
sudo apt autoremove --assume-yes

echo "Kernels antigos removidos com sucesso."
echo "Instalando kernel mais recente..."

sudo apt-get install linux-image-amd64 -y

sudo apt autoremove --purge -y;

sleep 3

exit 0
