#!/bin/bash
#Exemplo de como filtrar a seleção de um arquivo no yad

file=$(yad --title="Selecione o arquivo desejado" --file --file-filter="*.txt")

case $? in
 0)
   linhas=$(cat $file | wc -l)
   yad --text "O arquivo:$file possui $linhas linhas. "
   ;;
 1)
   yad --text "Programa encerrado!"
   ;;
esac
