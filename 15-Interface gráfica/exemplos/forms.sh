#!/bin/bash
#Criando um formulário para o usuário inserir seus dados: Nome, Telefone, CPF e data de nascimento e salvando cada uma dessas entradas em uma variável

forms=$(Zenity --forms --add-entry="Nome" --add-entry="Telefone" --add-entry="CPF" --add-calendar="Data de nascimento")

case $? in
  0)
    nome=$(echo $forms | cut -d '|' -f1)
    telefone=$(echo $forms | cut -d '|' -f2)
    cpf=$(echo $forms | cut -d '|' -f3')
    data=$(echo $forms | cut -d '|' -f4)
    ;;
  
  1)
    echo "Programa encerrado!"
    ;;

  -1)
    echo "Erro inesperado!"
    
esac