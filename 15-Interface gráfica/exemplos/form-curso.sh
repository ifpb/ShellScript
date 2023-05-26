#!/bin/bash
#Exemplo de form com yad

opc=$(yad --form --title "Exemplo de form" \
   --text "Informe seus dados referentes ao seu curso" \
   --field "Informe seu nome completo:text" \
   --field "Escolha o seu curso:CB" \
   --field "Em qual período vc está?:NUM" \
   --field "Selecione o seu currículo:FL" \
   "" \
   'Redes de Computadores!Sistema para Internet!Engenharia elétrica!Administração' \
   )


case $? in
 0)
   usuario=$(echo "$opc" | cut -d "|" -f1)
   yad --text "Suas informações foram salvas $usuario!"
   ;;
 1)
   yad --text "Formulário encerrado!"
   ;;
esac
