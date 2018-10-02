#!/bin/bash

a1=$1; a2=$2; a3=$3;

busca="127.0.0.1"

ls ${a1} &> /dev/null || echo "Sinto muito, arquivo ${a1} não existe. Saindo..."
ls ${a1} &> /dev/null || exit 1

cat ${a1} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a1}"


ls ${a2} &> /dev/null || echo "Sinto muito, arquivo ${a1} não existe. Saindo..."
ls ${a2} &> /dev/null || exit 1

cat ${a2} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a2}"


ls ${a3} &> /dev/null || echo "Sinto muito, arquivo ${a1} não existe. Saindo..."
ls ${a3} &> /dev/null || exit 1

cat ${a3} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a3}"
