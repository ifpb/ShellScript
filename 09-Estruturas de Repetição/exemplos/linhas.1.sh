#!/bin/bash

(( ${#} != 1 )) && echo " *** Uso: ${0} <arquivo_de_entrada>"
(( ${#} != 1 )) && exit 1

entrada=${1}
cont_linha=0

while read linha; do
    
    if (( cont_linha % 2 == 0 )); then
        echo ${linha}
    fi
    
    cont_linha=$(( cont_linha + 1 ))

done < ${entrada}
