# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

if (( "$#" != "1" )); then
    echo "*** Uso: ./${0} <nome_arquivo>"
    exit 1
fi

infile=${1}

if [ ! -f ${infile} ]; then
    echo "Arquivo ${infile} não existe. Saindo..."
    exit 1;
fi

nlines="$( cat ${infile} | wc -l)"

if (( ${nlines} > 100 )); then
    echo "Arquivo Muito grande"
elif (( ${nlines} < 10 )); then
    echo "Arquivo Muito pequeno"
else
    cat ${infile}
fi
```

