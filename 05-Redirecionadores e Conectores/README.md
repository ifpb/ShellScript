# Redirecionadores e Conectores


* Redirecionadores
    * São usados para redirecionar as entradas/saídas de um comando para outro comando ou para um arquivo.
    * |
        * Conecta a saída do comando anterior com a entrada do comando seguinte.
        * Ex.: cat a.txt b.txt | grep nome
    * > >>
        * Redireciona a saída padrão do comando para um arquivo.
        * '>' sobrescreve o arquivo em questão.
        * '>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo.
    * 2> 2>>
        * Redireciona a saída padrão de erros do comando para um arquivo.
        * '2>' sobrescreve o arquivo em questão.
        * '2>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo.    
    * &> &>>
        * Redireciona todas as saídas do comando para um arquivo.
        * '&>' sobrescreve o arquivo em questão.
        * '&>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo.        
    * <
        * Redireciona o arquivo para a entrada padrão do comando.
        * Ex.: ./teste.sh < arq.txt
    * <<
        * Segue um documento.
        * Permite redirecionar a entrada padrão do comando para o documento escrito no bash.
        * Observe o exemplo file.3.sh para mais informações.
    * <<<
        * Segue uma string.
        * Permite redirionar a entrada padrão do comando para a string escrita no bash.
        * Equivalente a executar: echo "teste" | grep t
        * Seria executar: grep t <<<"teste"
        


* Código de retorno
    * Todo comando executado no linux possui um código de retorno que informa se o comando foi bem sucedido ou não.
    * Este código pode ser acessado a através da variável $?
    * O Código 0 indica o sucesso da execução.
    * Códigos diferentes de 0 indicam falha.
    * Por exemplo:
        * o comando 'mkdir teste' retorna falha caso o diretório teste já exista.
        * E o comando 'grep txt teste' retorna falha caso não exista o padrão txt no arquivo teste.


* Conectores
    * São usados para conectar um comando a outro.
    * |
        * O pipe também pode ser considerado um conector.
        * Ex.: cat a.txt b.txt | grep nome
    * ;
        * Usado para executar vários comandos na mesma linha.
        * Ex.: echo "Arquivo 1"; cat $1; echo "Arquivo 2"; cat $2
    * &&
        * Usado como um condicional: O comando seguinte apenas é executado caso o primeiro obtenha sucesso.
        * I.e.: caso o primeiro comando tenha um código de retorno 0.
        * Ex.: mkdir teste && echo "Diretório criado com sucesso"
    * ||
        * Usado como um condicional: O comando seguinte apenas é executado caso o primeiro falhe.
        * I.e.: caso o primeiro comando tenha um código de retorno diferente de 0.
        * Ex.: mkdir teste || echo 'Não foi possível criar o diretório "teste"'
