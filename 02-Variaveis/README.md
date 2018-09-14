# Definição de variáveis

* Variáveis definidas pelo usuário:
    * a=10
    * b="teste"
    * c=${b}${a}

* Leitura de variáveis pela entrada padrão:
    * read teste
    * read - p "Escreva algo: " teste
    * echo $teste
    
* Variáveis do Sistema:
    echo ${PATH}
    echo ${HOME}
    echo ${SHELL}
    
* Variáveis definidas pelo bash:
    * $1 $2 $3 $4 $5 $6 $7 ...
    * $*
    * $0
