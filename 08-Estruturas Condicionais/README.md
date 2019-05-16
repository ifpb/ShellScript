# Estruturas Condicionais

* Aliadas aos testes de condições, as estruturas condicionais propiciam melhor legibilidade para os scripts, evitando o uso de conectores e permitindo vários comandos após a avaliação de uma condição.

* No bash, temos as estruturas condicionais 'if - elif - else' e 'case - in'.


### if - then - fi:

* A estrutura condicional mais básica:

```bash
if (( $# < 3 )); then
    echo "Número de parâmetros insuficiente. Saindo..."
    exit 1
fi

if [ -e ${1} ]; then
    echo "Arquivo ${1} não encontrado."
    echo "Favor verificar se o argumento foi passado corretamente."
    exit 1
fi
```


### if - then - else - fi:

* Testando se a condição é satisfeita ou não:

```bash
if (( $# < 3 )); then
    echo "Número de parâmetros insuficiente. Saindo..."
    exit 1
else
    arquivo_entrada="$1"
    arquivo_saida="$2"
    algoritmo_escolhido="$3"
fi

if [ -e ${1} ]; then
    echo "Arquivo ${1} não encontrado."
    echo "Favor verificar se o argumento foi passado corretamente."
    exit 1
else
    num_linhas=$( cat ${1} | wc -l )
fi
```

### if - then - elif - then - else - fi:
    
* Testando várias condições ao mesmo tempo:

```bash
if (( $# < 1 )); then
    echo "Número de parâmetros insuficiente. Saindo..."
    exit 1
elif (( $# == 3 )); then
    arquivo_entrada="$1"
    arquivo_saida="$2"
    algoritmo_escolhido="$3"
elif (( $# == 2 )); then
    arquivo_entrada="$1"
    arquivo_saida="$2"
    algoritmo_escolhido="basic"    
else
    arquivo_entrada="$1"
    arquivo_saida="/tmp/tmp.out"
    algoritmo_escolhido="basic"
fi

if [ -e ${1} ]; then
    echo "Arquivo '${1}' não encontrado."
    echo "Favor verificar se o argumento foi passado corretamente."
    exit 1
elif [ -d ${1} ]]; then
    echo "Arquivo ${1} é um diretório."
    echo "Favor passar um arquivo regular como argumento."
    exit 1
else
    num_linhas=$( cat ${1} | wc -l )
fi
```  

### case - in - esac:

* Testando várias condições sobre uma mesma variável:

```bash
read -p "digite uma tecla: " t

case $t in
    1) echo "Você Digitou a tecla 1" ;;
    2) echo "Você Digitou a tecla 2" ;;
    3) echo "Você Digitou a tecla 3" ;;
    q) echo "Saindo..." ;;
    *) echo "Não reconheço a tecla digitada..." ;;
esac

```
