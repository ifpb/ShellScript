#!/bin/bash

# Este script calcula a média final do seu semestre do curso, e diz se você passou por média.

read -p "digite a primeira nota: " n1
read -p "digite a segunda nota: " n2
read -p "digite a terceira nota: " n3

med=$( echo "scale=2; (${n1} + ${n2} + ${n3})/3" | bc )
echo "A sua média neste semestre foi ${med}" 

if [ $( bc <<< "${med} >= 7.0" ) -eq 1 ]; then
    echo "Você Passou!"
else
    echo "Você Reprovou!!"
fi
