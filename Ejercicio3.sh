#!/bin/bash

# Imprime el nombre del script
echo "Nombre del script: $0"

# Imprime el número de argumentos
num_args=$#
echo "Número de argumentos: $num_args"

# Verifica si hay al menos dos argumentos
if [ $num_args -ge 2 ]; then
    echo "$1 $2"  # Imprime el primer y segundo argumento en la misma línea
elif [ $num_args -eq 1 ]; then
    echo "$1"  # Si solo hay un argumento, lo imprime
fi

# Imprime argumentos adicionales (tercero en adelante) cada uno en una línea
if [ $num_args -gt 2 ]; then
    for arg in "${@:3}"; do
        echo "$arg"
    done
fi