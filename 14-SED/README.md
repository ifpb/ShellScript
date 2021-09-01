# SED

* Assim como o AWK, o SED é um comando usado principalmente para a manipulação de arquivo, a principal diferença é: o SED utiliza apenas expressões regulares.

* O comando é formado basicamente por: sed 'expressão' arquivo

* Opções do comando SED:
	* 1. -i: Altera o arquivo;
	* 2. -e: Imprime na tela, mas não altera o arquivo;
	* 3 s: Substitui um trecho do texto por outro;
	* 4. !: Inverte a lógica do comando;
	* 5. ;: Separador de comandos;
	* 6. |: Separador de strings;
	* 7. d: Usado para deletar;
	* 8. p: Usado para imprimir (geralmente utilizado quando se usa o -n);
	* 9. g: Trata a linha inteira;
	* 10. q: Sai do SED após executar o comando;


### Exemplos
* echo "Bem-vindo ao Linux! Só o Linux é Linux" | sed 's/Linux/Windows/'

* A saída deste comando será: "Bem-vindo ao Windows! Só o Linux é Linux", pois a expressão descrita no sed faz a alteração e já passa para a outra linha, caso queiramos alterar a linha inteira, basta adicionar a opção "g" ao final:
	* echo "Bem-vindo ao Linux! Só o Linux é Linux" | sed 's/Linux/Windows/g'

* Removendo as linhas do arquivo
* Suponhamos que temos um arquivo ips.txt e que queremos remover as dez primeiras linhas do arquivos, o comando utilizado seria:
	* sed '1,10 d' ips.txt
