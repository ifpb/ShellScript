# Exercício 03

Considere o script teste.sh descrito abaixo.

```bash
#!/bin/bash

a="$*"
b='$*'
c="$#"

echo '$a'
echo '$b'
echo '$c'

echo "$a"
echo "$b"
echo "$c"

```

O que é impresso na tela após a execução do script teste.sh da seguinte forma:

```bash
./teste.sh arg1 arg2 arg3 arg4
```
