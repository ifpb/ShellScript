# Funções e Modularização

* O os scripts shell possibilitam a definição de funções. Desta forma, o código pode ficar mais organizado, legível e menos repetitivo, sendo menos propenso a falhas e mais fácil de ser mantido.

* Uma vez definida, uma função se torna um comando interno para o shell atual.


```bash
function ola() {
    echo 'oi'
}

function linha() {
    echo '----------------------------'
}

linha
linha
ola
linha
linha

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

xyz

```
