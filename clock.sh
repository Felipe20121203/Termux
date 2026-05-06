#!/bin/bash

# Define o fuso horário de Brasília para garantir precisão
export TZ='America/Sao_Paulo'

while true; do
    # Ciclo da HORA (10 segundos)
    for i in {1..10}; do
        # O comando abaixo limpa a tela de forma mais rápida que o 'clear'
        printf "\033[H\033[2J"
        echo "=============================="
        echo "    HORÁRIO DE BRASÍLIA"
        echo "        $(date +%H:%M:%S)"
        echo "=============================="
        echo " Sincronizando a cada 25s..."
        sleep 1
    done

    # Ciclo da DATA (10 segundos)
    for i in {1..10}; do
        printf "\033[H\033[2J"
        echo "=============================="
        echo "    DATA ATUAL"
        echo "        $(date +%d/%m/%Y)"
        echo "=============================="
        echo " Sincronizando a cada 25s..."
        sleep 1
    done
done