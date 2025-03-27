#!/bin/bash

# Script para limpar arquivos desnecessários em /var antes de gerar uma ISO Live
# Para rodar este script, use o comando: sudo ./limpeza_var.sh

# Função para remover arquivos de cache de pacotes
limpar_cache_pacotes() {
    echo "Limpando cache de pacotes..."
    sudo apt clean
    sudo apt autoremove -y
    echo "Cache de pacotes limpo."
}

# Função para remover logs antigos
limpar_logs() {
    echo "Limpando arquivos de log..."
    sudo find /var/log -type f -name "*.log" -exec rm -f {} \;
    sudo find /var/log -type f -name "*.gz" -exec rm -f {} \;
    sudo find /var/log -type f -name "*.1" -exec rm -f {} \;
    echo "Logs limpos."
}

# Função para limpar arquivos temporários
limpar_temporarios() {
    echo "Limpando arquivos temporários..."
    sudo rm -rf /var/tmp/*
    sudo rm -rf /tmp/*
    echo "Arquivos temporários limpos."
}

# Função para limpar diretórios de spool
limpar_spool() {
    echo "Limpando arquivos de spool..."
    sudo rm -rf /var/spool/*
    echo "Arquivos de spool limpos."
}

# Função para limpar cache APT
limpar_cache_apt-get() {
    echo "Limpando cache APT..."
    sudo rm -rf /var/lib/apt-get/lists/*
    echo "Cache APT limpo."
}

# Função para limpar diretório de correio
limpar_mail() {
    echo "Limpando arquivos de correio..."
    sudo rm -rf /var/mail/*
    echo "Arquivos de correio limpos."
}

# Função para limpar dados do dpkg
limpar_dpkg() {
    echo "Limpando dados do dpkg..."
    sudo dpkg --clear-avail
    echo "Dados do dpkg limpos."
}

# Função principal que chama as funções de limpeza
limpar_todos() {
    echo "Iniciando limpeza de arquivos desnecessários..."
    
    limpar_cache_pacotes
    limpar_logs
    limpar_temporarios
    limpar_spool
    limpar_cache_apt-get
    limpar_mail
    limpar_dpkg
    
    echo "Limpeza concluída!"
}

# Executa a limpeza
limpar_todos

exit 0
