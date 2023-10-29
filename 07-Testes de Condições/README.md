# Testes de Condições

* Uma das funções mais fundamentais de qualquer linguagem de programação é a possibilidade de executar (ou não) certos trechos de código dependendo de certas condições.

* No bash, o teste de condições é feito com base na variável $?, que representa o código de retorno do último comando executado. Caso seu valor seja 0, o último comando obteve sucesso.

* Desta forma, o teste pode ser verificado, por exemplo, usando os conectores || e &&:
    * (( 10 > 11 )) || exit 0
    * test -d /home/user && echo 'usuario existe'
    * [ ${a} -gt ${b} -a ${b} -gt ${c} ] && echo OK


### Teste de condições aritméticas com ((  )):

* Tal qual a substituição aritmética, permite o teste de condições com números inteiros:
    * (( 10 > 11 ))
    * (( 2*4 <= 12 ))
    * (( 3**2 == 3*3 ))
    * (( 27 % 2 == 12 - 10 ))
    * (( "${#}" == 4 ))
    * (( "${a}" > "${b}" ))

* Exemplos utilizando conectores:
    * (( 25 % 2 == 0 )) && echo "par"
    * (( 31 % 2 == 0 )) || echo "impar"
    * (( "${a}" > "${b}" )) && (( "${b}" > "${c}" )) && echo 'a > b > c'


### Teste de condições com o comando test:

* O comando test permite a verificação de condições relativas a números inteiros:
    * -gt significa maior que
        * test 12 -gt 10
    * -ge significa maior ou igual que
        * test 10 -ge 10    
    * -lt significa menor que
        * test 11 -lt 10
    * -le significa menor ou igual que
        * test ${1} -le ${2}    
    * -eq significa igual a
        * test 22 -eq 22    
    * -ne significa não igual (ou diferente)
        * test 31 -ne 11

* O comando test permite a verificação de condições relativas a strings:
    * == significa strings iguais
        * test a == a
    * != significa strings diferentes
        * test a != b
    * -z significa teste se a string é vazia
        * x="umdoistres"; test -z "$x"
    * -n significa teste se a string é não vazia
        * x="umdoistres"; test -n "$x"

* O comando test permite a verificação de condições relativas a arquivos:
    * -d significa teste se o arquivo existe e é um diretório
        * test -d /home
    * -e significa teste se o arquivo existe
        * test -e ./bashrc
    * -f significa teste se o arquivo existe e é um arquivo comum
        * test -f /tmp/p.lock

* O comando test pode ser utilizado de forma abreviada como [ EXPRESSÃO ]:
    * [ -d /home ]
    * [ 12 -gt 10 ]
    * [ "a" == "a" ]
    * [ "${x}" != "${y}" ]
    * [ -z "${x}" ]
    
* Adicionalmente, várias condições podem ser conectadas por -a ( um AND, equivalente ao && ):
    * [ -n "${x}" -a ${x} -gt 0 ] && echo "Existe e é maior que zero"
    * [ -n "${x}" ] && [ ${x} -gt 0 ] && echo "Existe e é maior que zero"
    
* Adicionalmente, várias condições podem ser conectadas por -o ( um OR, equivalente ao || ):
    * [ "${a}" -gt "${b}" -o "${a}" -gt "${c}" ] && echo '$a maior que $b ou $a maior que $c'
    * [ "${a}" -gt "${b}" ] || [ "${a}" -gt "${c}" ] && echo '$a maior que $b ou $a maior que $c'
    
* Adicionalmente, a condição pode ser negada usando uma exclamação '!':
    * [ ! -d /home ]
    * [ ! -z "${x}" ]


### Teste de condições aritméticas para números reais (usando bc):
    
* Por padrão, o bash não disponibiliza testes de condições para números reais.

* É necessário, então, utilizar comandos externos (bc ou awk, por exemplo) através da substituição de shell.

* Caso um teste dê verdadeiro, o bc imprime "1" na tela, caso dê falso imprime "0":
    * bc <<<"3.1 > 3"
    * bc <<<"3.1 < 3"

* Desta forma, usando substituição de shell, o retorno do comando bc deve ser testado usando test ou (( )):
    * x=$(bc <<<"3.1 > 3"); (( ${x} == 1 )) && echo OK
    * x=$(bc <<<"3.1 > 3"); (( ${x} == 0 )) && echo FALHOU
    * x=$(bc <<<"3.1 > 3"); test "${x}" -eq 0 && echo FALHOU
    * x=$(bc <<<"3.1 > 3"); [ ${x} -eq 1 ] && echo OK

* Ou, de forma direta (sem usar a variável $x):
    * (( $(bc <<<"3.1 > 3") == 1 )) && echo OK
    * [ $(bc <<<"3.1 > 3") -eq 1 ] || echo FALHOU    


# Videoaula(s)

* Subistiuição aritmética: https://youtu.be/Y5HlZN2-yac
* Comando test: https://youtu.be/pxt-PFzgHOw?list=PLlfnoloSCPI2yAhYzUXE6V8-8DNC5nk0M&t=792
* Comando bc: https://www.youtube.com/watch?v=Y5HlZN2-yac&t=670s
