# Exercício 02

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

x=10

echo "10 / 3" | bc
echo "${x} / 3" | bc
echo "scale=2; 10 / 3" | bc
echo "scale=2; ${x} / 3" | bc
echo "obase=16; scale=0; 10 * 2" | bc
bc <<<"obase=16; scale=0; 10 * 2"

exit 0
```

