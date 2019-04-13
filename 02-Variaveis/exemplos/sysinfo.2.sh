#!/bin/bash

echo -e "Olá! Este script exibe mais informações sobre o sistema!\n"

echo -e "\nShell padrão:\n"
echo ${SHELL}

echo -e "\nCaminho padrão para programas:\n"
echo ${PATH}

echo -e "\nDiretório atual de trabalho:\n"
echo ${PWD}

echo -e "\nTempo de execução deste script:\n"
echo ${SECONDS}
