# Aspas e Argumentos de linha de comando


* Caminho e Argumentos de linha de comando
    * Considere y.sh um script shell
    * Este pode ser executado de diversas formas:
        * ./y.sh
            * Neste caso, o caminho para o script é ./
            * Nenhum argumento de linha de comando foi passado.
        * ./teste/y.sh 25
            * Neste caso, o caminho para o script é ./teste/ (O script está na pasta teste, que está no diretório atual)
            * Apenas um argumento de linha de comando foi passado: "25"
        * /home/usuario/y.sh a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
            * Neste caso, o caminho para o script é /home/usuario/
            * Foram passados 10 argumentos de linha de comando: "a1" até "a10"


* Aspas simples ('):
    * Todos os caracteres entre aspas simples são tratados de forma literal.
    * Útil para passar um programa como parâmetro para um comando: por exemplo sed e awk
        * sed 's/a/b/g' < entrada.txt
        * awk 'print $1 $2' < entrada.txt
    * Também é útil para imprimir caracteres especiais:
        * echo '$$' é um caractere especial, '\\' também


* Aspas duplas ("):
    * Todos os caracteres entre aspas duplas são tratados de forma literal.
    * Exceto '$', '\\' e '`'
    * Útil para preservar espaços em branco, mas executando substituições de variáveis
        * echo "Segue o path: ${PATH}"
    * Também para preservar espaços quando atribuindo valores às variáveis
        * A="Meu nome é XUAUM"

    
* Variáveis que representam os argumentos de linha de comando:
    * $1 $2 $3 $4 $5 $6 $7 ... (cada argumento individualmente)
    * $* (Todos os argumentos de linha de comando)
    * $0 (Comando executado)
    * $# (Número de argumentos passados pela linha de comando)
