#!/bin/bash

echo -e "Olá! Este script exibe informações sobre o sistema!\n"

echo -e "\nUso de memória:\n"
free

echo -e "\nUso de disco:\n"
df

echo -e "\nUsuários logados:\n"
who

echo -e "\nNúmero de arquivos e diretórios na pasta atual:\n"
ls -1 | wc -l

echo -e "\nNúmero de arquivos e diretórios na pasta home:\n"
ls -1 ~ | wc -l
