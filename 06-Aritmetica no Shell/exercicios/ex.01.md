# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

a=2
b=4
c=$(( a + b ))


echo $(( a + b + c ))
echo $(( a + b * c ))
echo $(( (a + b) * c ))
echo $(( a ** b ))
echo $(( (a ** b) / c ))
echo $(( (a ** b) % c ))

```

