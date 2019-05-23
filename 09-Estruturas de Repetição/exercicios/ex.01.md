# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

echo "Foram passados ${#} arguentos:"

for a in ${*}; do
    echo "${a}: $( echo ${a} | wc -c )"
done
```

