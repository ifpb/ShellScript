#!/bin/bash
#Criando um script e salvando numa variável o caminho do arquivo que o usuário selecionar

arquivo=$(Zenity --file-selection)

case $? in
  0) 
    caminho=$(echo $arquivo)
    ;;
  1)
    echo "Programa encerrado!"
    ;;
  -1)
    echo "Erro inesperado!"
esac
