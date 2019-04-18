#!/bin/bash

# Este script efetua uma operação aritmetica simples com dois operandos.

read -p "digite o número x: " x
read -p "digite uma operação (+, -, *, /, **, %): " op
read -p "digite o número y: " y

res="$(( $x $op $y ))"
echo "o resultado da operação $x $op $y é ${res}" 
