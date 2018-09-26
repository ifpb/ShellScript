#!/bin/bash

echo -e " *** Este script realiza um backup dos arquivos da pasta atual:"
ls -1

DATA="$(date +%d.%m.%y.%H.%M)"
PASTA="/tmp/backup/$DATA"

mkdir -p ${PASTA} 2> /dev/null

cp * $PASTA

echo -e " *** Feito!"
