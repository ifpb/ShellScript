#!/bin/bash

echo -e " * Este script foi executado usando o seguinte comando: ${0} ${*}"

echo -e ' * Note que a variável "$0" representa apenas o comando:' $0

echo -e ' * Enquanto a variável "$*" representa todos os argumentos de linha de comando:' $*

echo -e ' * A variavel "$1" representa o primeiro argumento de linha de comando:' ${1}

echo -e ' * A variavel "$2" representa o segundo argumento de linha de comando:' ${2}

echo -e '\n ...\n'

echo -e ' * Finalmente, a variavel "$#" representa o número de argumentos passados pela linha de comando:' ${#}
