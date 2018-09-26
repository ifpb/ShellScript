#!/bin/bash

echo -e " *** Este script realiza um backup dos arquivos da pasta atual:"
ls -1

DATA="$(date +%d.%m.%y.%H.%M)"
PASTA="/tmp/backup/$DATA"

echo -e " *** Criando a pasta temporária ${PASTA}..."
mkdir -p ${PASTA} 2> /dev/null

echo -e " *** Copiando os arquivos (exceto .zip) para lá..."
cp $(ls | grep -v *.zip) $PASTA

echo -e " *** Compactando os arquivos"
zip -r ./${DATA}.zip ${PASTA}/*

echo -e " *** Excluindo a pasta temporária ${PASTA}..."
rm -r ${PASTA} 2> /dev/null

echo -e " *** Feito!"
