# Exercício 02

O que é impresso na tela após a execução do seguinte script?

```bash
#!/bin/bash

cat $1 | grep $2 &> /dev/null && echo "OK"
cat $1 | grep $2 &> /dev/null || echo "Not OK"

exit 0
```

