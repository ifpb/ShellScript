# Funções e Modularização

* O os scripts shell possibilitam a definição de funções. Desta forma, o código pode ficar mais organizado, legível e menos repetitivo, sendo menos propenso à falhas e mais fácil de ser mantido.

* Uma vez definida, ua função se torna um comando interno para o shell atual.


### for - do - done:

* Estrutura utilizada quando se tem uma ideia muito boa sobre  número de vezes que o bloco deve ser executado.


```bash
function ola() {
    echo 'oi'
}

function linha() {
    echo '----------------------------'
}

```

* Assim como qualquer comando, uma função também aceita argumentos.

* Dentro da função, as variáveis $1, $2, $3, ..., $* e $# assumem os valores referentes aos argumentos passados à função.


```bash
function soma() {
    echo $(( ${1} + ${2} + ${3} + ${4} ))
}

```

* Assim como os comandos, as funções também possuem um código de retorno, sendo que 0 representa sucesso e != 0 representa falha.

* O código de retorno é capturado pela variável $?.


```bash
function testa_arquivo() {
    [ -d "$1" ] && return 1;
    [ ! -e "$1" ] && return 2;
    return 0;
}

testa_arquivo /etc/passwd
echo $?
```

* O texto que uma função imprime na tela pode ser capturado usando substituição de shell.


```bash
function soma() {
    echo $(( ${1} + ${2} + ${3} + ${4} ))
}

y="$( soma 4 5 6 7 8 )"

```

* Observe que tanto as funções tem acesso às variáveis criadas em outros locais do script, quanto os outros locais do script tem acesso às variáveis criadas nas funções.

* deste modo, podemos dizer que uma vez definida, uma variável é visível durante todo o ciclo de vida de um script.

```bash
function echo_x() {
    echo ${x}
}

function def_y() {
    y=50
}

x=25
echo_x
def_y
echo ${y}
```

### Modularização:

* Uma vez que temos várias funções definidas em um script, estas podem ser importadas para serem executadas por outros scripts usando o comando source.

* Este comando executa cada linha do script importado no script atual, trazendo, assim, suas definições de funções, variáveis, exportações e outros. 


```bash
# File f.sh
x=10 # Esta linha sera executada durante a importação
echo "Esta linha tambem será executada $x."

function xyz() {
    echo $x
}
```


```bash
# File g.sh

source f.sh  # Importa o script f.sh (executa-o aqui, linha por linha)

function xyz

```

* Observe que o conjunto de valores que será atribuído à variável pode ser proveniente de uma substituição de variáveis (ex.: ${*}) ou de uma substituição de shell (ex.: $(ls) ).

* Comandos comumente utilizados junto ao for-in-do-done: seq, cat, grep, head, ls, users...


### while-do-done:
    
* Utilizado quando deseja-se que um conjunto de comandos seja executado enquanto determinada condição seja verdadeira:

```bash
while [ "${word}" != "END" ]; do
    echo "será executado até que se digite END"
    read word
done

while (( "${SECONDS}" <= 10 )); do
    echo "Já se passaram ${SECONDS} segundos"
    sleep 1
done
```  

* O laço while-do-done també pode ser usado para iterar sobre cada linha de um arquivo de entrada.

* Para tal, combina-se o while-do-done com o comando read e o redirecionador '<'.

```bash
while rad linha; do
    echo ${linha}
done < arquivo.txt
```


### until - do - done:

* Muito semelhando ao while-do-done, contudo o bloco de comandos é executado até que a condição seja satisfeita.


```bash
echo "linha" > arquivo
until (( $(cat arquivo | wc -l) == 10 )); do
    echo "linha" >> arquivo
    echo "O arquivo já possui $(cat arquivo | wc -l) linha(s)"
done

```
