#!/bin/bash

a1=$1; a2=$2; a3=$3;

busca="127.0.0.1"

[ ! -e ${a1} ] && echo "Sinto muito, arquivo ${a1} não existe. Saindo..."
[ ! -e ${a1} ] && exit 1

cat ${a1} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a1}"


test ! -e ${a2} && echo "Sinto muito, arquivo ${a2} não existe. Saindo..."
test ! -e ${a2} && exit 1

cat ${a2} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a2}"


ls ${a3} &> /dev/null || echo "Sinto muito, arquivo ${a3} não existe. Saindo..."
ls ${a3} &> /dev/null || exit 1

cat ${a3} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a3}"
