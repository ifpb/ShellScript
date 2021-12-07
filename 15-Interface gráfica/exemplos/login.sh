#!/bin/bash
# Criando uma interface de login para o usuário e senha e salvando nas variáveis "usuário" e "senha"

interface=$`Zenity --password --title="Login" --username`

case $? in
  0)
    usuario=`echo $interface | cut -d '|' -f1
    senha = `echo $interface | cut -d '|' -f2
    ;;
  1)
    echo "Login encerrado!"
    ;;
  -1)
    echo "Erro inesperado!"
esac

  
