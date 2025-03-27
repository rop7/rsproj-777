#!/bin/bash

# Configurações padrão
RAM=4G
CORES=2
SHARED_HOST_DIR="$HOME/Space/development/rsproj-iso-shared"
SHARED_GUEST_DIR="/home/rsp/Space/shared"
ISO=""
HDA=""

# Função de uso
usage() {
    echo "Uso: $0 --hda <arquivo.qcow2> [--iso <arquivo.iso>]"
    exit 1
}

# Parsing dos argumentos
while [[ $# -gt 0 ]]; do
    case "$1" in
        --hda)
            HDA="$2"
            shift 2
            ;;
        --iso)
            ISO="$2"
            shift 2
            ;;
        *)
            echo "Opção desconhecida: $1"
            usage
            ;;
    esac
done

# Verifica se a opção obrigatória --hda foi fornecida
if [[ -z "$HDA" ]]; then
    echo "Erro: A opção --hda é obrigatória."
    usage
fi

# Configuração base do QEMU
QEMU_CMD=(
    qemu-system-x86_64
    -enable-kvm
    -m "$RAM"
    -smp "$CORES"
    -cpu host
    -drive file="$HDA",if=virtio
    -display gtk,gl=on
    -device virtio-vga-gl
    -virtfs local,path="$SHARED_HOST_DIR",security_model=none,mount_tag=shared
)

# Se uma ISO foi especificada, adiciona o CD-ROM e define boot por ele
if [[ -n "$ISO" ]]; then
    QEMU_CMD+=(
        -boot d
        -cdrom "$ISO"
    )
else
    QEMU_CMD+=( -boot c )
fi

# Executa o QEMU
exec "${QEMU_CMD[@]}"
