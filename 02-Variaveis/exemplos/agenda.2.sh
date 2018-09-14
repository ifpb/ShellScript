#!/bin/bash

read -p "Digite seu nome: " nome
read -p "Digite seu telefone: " fone
read -p "Digite seu e-mail: " mail

echo "Sua entrada na minha agenda é:"
echo -e "${nome}\t${fone}\t${mail}"
