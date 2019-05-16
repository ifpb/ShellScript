# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

echo -e "Os preços podem ter casas decimais, Ex.: 10.25\n"

read -p "Digite o preco do item 1: " p1
read -p "Digite o preco do item 2: " p2
read -p "Digite o preco do item 3: " p3
read -p "Digite o preco do item 4: " p4

total=$( bc <<< "scale=2; ${p1} + ${p2} + ${p3} + ${p4}" )

(( $( bc <<< "${total} >= 200.0" ) == "1" )) && total=$( echo "scale=2; ${total} * 0.85" | bc)

echo "Você deve pagar $total Reais"

```

