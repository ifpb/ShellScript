#!/bin/bash

# Este script recebe 3 argumentos de linha de comando, e imprime a soma destes

a1=$1
a2=$2
a3=$3

echo 'A soma de $a1 com $a2 é:' $(( a1 + a2 ))
echo 'A soma de $a1 com $a3 é:' $(( $a1 + $a3 ))
echo 'A soma de $a2 com $a3 é:' $(( ${a2} + ${a3} ))

echo 'A soma de $a1 com $a2 e $a3 é:' $(( a1 + $a2 + ${a3} ))
