#!/bin/bash

(( ${#} != 1 )) && echo " *** Uso: ${0} <arquivo_de_entrada>"
(( ${#} != 1 )) && exit 1

entrada=${1}

while read linha
do
    echo "${linha}" | wc -w
done < ${entrada}
