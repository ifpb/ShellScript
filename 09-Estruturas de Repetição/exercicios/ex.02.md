# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

read -p "Informe o nome de um arquivo: " arq

if [ ! -f "${arq}" ]; then
    echo "Nome de arquivo inválido ou arquivo não existe."
    exit 1
fi

while read l; do
    if cat /etc/passwd | grep ${l} 2> /dev/null; then
        echo "Usuário ${l} existe no sistema"
    else
        echo "Usuário ${l} não existe no sistema"
    fi
done < ${arq}

```

