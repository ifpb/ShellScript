#!/bin/bash

a1=$1; a2=$2; a3=$3;

busca="127.0.0.1"

cat ${a1} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a1}"
cat ${a2} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a2}"
cat ${a3} | grep $busca &> /dev/null && echo "${busca} encontrado no arquivo ${a3}"
