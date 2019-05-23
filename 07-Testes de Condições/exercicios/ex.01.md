# Exercício 01

O que é impresso na tela após a execução do seguinte script? Explique cada linha do script.

```bash
#!/bin/bash

a=2
b=4
c=$(( a + b ))

(( a + b + c > 10 )) && echo "OK"
(( a % 2 == 0 )) && (( b % 2 == 0 )) && echo "OK"
(( 2 ** 3 > 4 ** 2 )) && echo "OK"

test -f ${a} && echo "OK"
test ${a} -ge ${b} && echo "OK"
test -z "${d}" && echo "OK"

[ -d ${0} ] && echo "OK"
[ -e ${0} ] && echo "OK"
[ -f ${0} ] && echo "OK"
```

