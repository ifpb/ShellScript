# Exercício 03

Considere o script teste.sh descrito abaixo.

```bash
#!/bin/bash

touch $1.$(date +%s)
touch ${1}.zip

timestamp=$(date +%s)
touch $2.${timestamp}
touch ${2}.${timestamp}.zip

touch $3
touch ${3}.zip

touch ${timestamp}
ls -la >> timestamp

rm -rf $1 $2 $3 &> /dev/null

```

Explique a execução (linha por linha) do script teste.sh. Este foi executado da seguinte forma:

```bash
./teste.sh arg1 arg2 arg3
```
