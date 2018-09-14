# Exercício 03

Considere o script teste.sh descrito abaixo.

```bash
#!/bin/bash
echo $*
echo $1
echo $5
echo $12
echo $13
```

O que é impresso na tela após a execução do script teste.sh da seguinte forma:

```bash
./teste.sh a1 a2 a3 a4 "a5 a5" a6 a7 a8 'a9 a9' a10 a11 a12 a13
```

Como corrigir o script para que os argumentos de linha de comando 12 e 13 sejam exibidos corretamente?
