#!/bin/bash

# Este script efetua uma operação aritmetica simples com dois operandos.

read -p "digite o número x: " x

echo "Escolha uma operação:"
echo "   Digite 1 para +"
echo "   Digite 2 para -"
echo "   Digite 3 para *"
echo "   Digite 4 para /"

read c

read -p "digite o número y: " y

case ${c} in
    1) op="+" ;;
    2) op="-" ;;
    3) op="*" ;;
    4) op="/" ;;
    *) echo "Operação não reconhecida"
       echo "Na próxima vez, favor digitar 1, 2, 3, ou 4."
       exit 1
       ;;
esac

res="$(( $x $op $y ))"
echo "o resultado da operação $x $op $y é ${res}" 

