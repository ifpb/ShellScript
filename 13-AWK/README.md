###AWK

* Descrição
   * AWK é uma linguagem de programação que permite a manipulação de textos levando em consideração uma sequência de padrões.

* Opções de comando
   * -f Especifica o nome do arquivo que possui os comandos que serão executados.
   * -F Define o que será o separador de campos (O espaço é o padrão).
   * -h Informa as opções (Ajuda).
   * -v Informa a versão.

* Formato do comando
   * O comando awk é basicamente formado por: awk '/padrão/{ação}' "nomedoarquivo".
   * Onde o padrão é uma expressão regular, é necessário que ao menos uma ação ou um padrão seja digitado, caso contrário o comando awk não executará nada.



* Regras do AWK
   * 1-O AWK lê uma linha do arquivo por vez.
   * 2-Para cada linha lida o AWK realiza as ações que foram informadas.
   * 3-Caso não seja informado nenhum padrão o AWK não realizará nenhuma ação.
   * 4-Caso não seja informada nenhuma ação o AWK realizará a sua ação padrão (print)
   * 5-É possível realizar mais de uma ação separando cada uma delas por ponto e vírgula ";".


* Variáveis internas
  * O AWK, assim como o bash, possui suas variáveis internas, são elas:
  * ARGC: Número de argumentos da linha de comando;
  * ARGV: Vetor com os argumentos da linha de comandos;
  * ENVIRON: Vetor com as variáveis de ambiente;
  * ERRNO: Armazena mensagem de erro;
  * FILENAME: Nome do arquivo de entrada que está sendo processado;
  * FNR: Número de linhas já processadas em um determinado arquivo;
  * FS: Separador de campos (Espaço vazio é o padrão);
  * NF: Números de campos presentes na linha que está sendo processada (último campo);
  * NR: Números de linhas já processadas.
  * $0: A linha que está sendo processada atualmente
  * $1,$2,$3,$...: Campos da linha que está sendo processada.

### Exemplo:
	 Suponhamos que há um arquivo de texto chamado "entrada.txt" e nesse arquivo temos o seguinte conteúdo:

 * Nome		Pontos
   José		103
   Andréia	50
   Henrique	22
   Júlia	150
   
* Caso seja solicitado que apareça na tela apenas o nome das pessoas do arquivo, o comando usado será: 
  * awk 'NR>1{print $1}' entrada.txt

	Onde "NR>1" ignora a primeira linha, que neste caso é o cabeçalho (caso seja necessário), e $1 é o primeiro campo da linha que tem "espaço vazio" como parâmetro de separação.

* Arquivo AWK
  * Há também uma outra forma de realizar esse processamento que é criando um arquivo awk e inserindo nele os comandos necessários para realizar tal tarefa.
  * O arquivo pode ser feito utilizando o "BEGIN" e o "END" que são comandos utilizados 'antes' de processar e 'depois' de processar o arquivo.

### Exemplo:
BEGIN { comandos executados antes de iniciar a leitura do arquivo }
{
	condições a serem executadas em cada linha do arquivo
}
END { comandos a serem executados após a leitura do arquivo }
