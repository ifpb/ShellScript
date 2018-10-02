#!/bin/bash

a1=$1; a2=$2; a3=$3;

cat <<END
***
Este script tem como objetivo a criação dos arquivos e diretorios passados
como parâmetro pela linha de comando.

Nesta execução especificamente, foram passados $# argumentos.

Serão criados os diretórios $a1, $a2 e $a3 e os arquivos :

./${a1}/arquivo_${a1}
./${a2}/arquivo_${a2}
./${a3}/arquivo_${a3}
***
END



echo "diretórios criados em $(date):" >> lista_de_diretorios
echo ${a1} >> lista_de_diretorios
echo ${a2} >> lista_de_diretorios
echo ${a3} >> lista_de_diretorios

echo -e " *** Tentando criar o diretório ${a1}"

mkdir $a1 2> /dev/null && echo "OK!"
echo "$a1" > "./${a1}/arquivo_${a1}"

echo -e " *** Tentando criar o diretório ${a2}"

mkdir $a2 2> /dev/null && echo "OK!"
echo "$a2" > "./${a2}/arquivo_${a2}"

echo -e " *** Tentando criar o diretório ${a3}"

mkdir $a3 2> /dev/null && echo "OK!"
echo "$a3" > "./${a3}/arquivo_${a3}"
