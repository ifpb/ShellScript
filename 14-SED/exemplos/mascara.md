### Exemplo
* Levando em consideração o arquivo ips.txt, caso seja necessário adicionar uma máscara padrão para todos os ips o comando seria:
``` bash
sed -i 's/$/ Máscara: 255.255.255.0/' ips.txt
```