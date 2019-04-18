# Aritmética no Shell

* Existem algumas (várias) formas de realizar operações aritméticas no shell script.
Neste curso, vamos focar duas delas: $(()) e bc.

* $(( ))
    * Também conhecido como substituição aritmética (ou shell arithmetics), permite diversas operações com números inteiros:
        * a=$(( 12 * 10 ))
        * b=$(( 10 + $a ))
        * c=$(( $a + $b - 1 ))
        * echo $(( 2**4 ))
        * echo $(( 2**4 % 3 ))
        * echo $(( $a + $b * 2 ))
        * echo $(( a + b * 2 ))
        * echo $(( (a + b) * 2 ))

* bc
    * Por sua vez, o comando bc permite a realização de aritmética de ponto flutuante. É necessária a instalação do pacote bc.
        * echo "7 / 3 | bc"
    * Observe que é necessário informar o número de casas após a vírgula.
        * echo "scale=2; 7 / 3" | bc
    * Também é possível fazer transforação de base.

        * echo "obase=16; 10" | bc
        * echo "obase=8; 10" | bc
        * echo "obase=2; 10" | bc

    * Usando o 'here a string':

        * bc <<< "scale=2; 7 / 3" 

    * Como o bc é um comando, variáveis devem sempre utilizar o $. A atribuição do retultado deve utilizar substituição de shell.

        * x=$( bc <<< "scale=2; $a / $b" )

* Seguem outras formas de realizar operações aritméticas no shell script:

    * expr
        * expr 12 + 10
    * let
        * let 'a=12*10'
        * echo $a
    * python
        * python -c 'print( 12 * 10 )'
    * $[]
        * a=$[ 12 * 10 ]
    * awk
        * awk " BEGIN { print 12 * 10 }"
    * declare
        * declare -i n; n=6/3; echo $n

