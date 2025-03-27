#!/bin/bash

# Caminho fixo para o arquivo JSON
JSON_FILE="/home/rsp/Space/development/rsproj/@scripts/asset/latestDevelopmentPackages.json"

# Verifica se o arquivo JSON existe
if [ ! -f "$JSON_FILE" ]; then
    echo "Erro: Arquivo $JSON_FILE não encontrado!"
    exit 1
fi

# Lê os pacotes do arquivo JSON e instala cada um deles
echo "Lendo pacotes do arquivo $JSON_FILE..."
PACKAGES=$(jq -r '.[]' "$JSON_FILE")

if [ -z "$PACKAGES" ]; then
    echo "Nenhum pacote encontrado no arquivo $JSON_FILE."
    exit 1
fi

echo "Instalando pacotes..."
for PACKAGE in $PACKAGES; do
    echo "Instalando pacote: $PACKAGE"
    sudo apt-get install -y "$PACKAGE"
done

echo "Todos os pacotes foram instalados!"

exit 0
