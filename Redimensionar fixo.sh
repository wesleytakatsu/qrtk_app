#!/bin/bash

# Diretório contendo as imagens
dir="/home/wesley/projetos/QRCodeProject/qrtk_app/prints_app"

# Redimensionar cada imagem para 480x270 pixels e adicionar o prefixo "_"
for img in "$dir"/*.{jpg,jpeg,png,gif}; do
    if [[ -f "$img" ]]; then
        base=$(basename "$img")
        prefix="_$base"
        convert "$img" -resize 270x480! "$dir/$prefix"
    fi
done
