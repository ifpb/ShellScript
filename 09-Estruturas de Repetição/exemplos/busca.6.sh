#!/bin/bash

busca="127.0.0.1"

echo "*** Iterando sobre todos os ${#} argumentos passados..."

for a in ${*}; do

    if [ ! -e ${a} ]; then
        echo "Sinto muito, arquivo ${a} não existe. Saindo..."
        exit 1
    fi

    if cat ${a} | grep $busca &> /dev/null; then
        echo "${busca} encontrado no arquivo ${a}"
    else
        echo "${busca} não encontrado no arquivo ${a}"
    fi

done
