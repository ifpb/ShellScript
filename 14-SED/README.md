# SED

* Assim como o AWK, o SED é um comando usado principalmente para a manipulação de arquivo, a principal diferença é: o SED utiliza apenas expressões regulares.

* O comando é formado basicamente por: sed 'expressão' arquivo

* Opções do comando SED:
   * -i: Altera o arquivo;
   * -e: Imprime na tela, mas não altera o arquivo;
   *  s: Substitui um trecho do texto por outro;
   *  !: Inverte a lógica do comando;
   *  ;:Separador de comandos;
   *  |: Separador de strings;
   *  d: Usado para deletar;
   *  p: Usado para imprimir (geralmente utilizado quando se usa o -n);
   *  g: Trata a linha inteira;
   *  q: Sai do SED após executar o comando;


### Exemplos
```bash
echo "Bem-vindo ao Linux! Só o Linux é Linux" | sed 's/Linux/Windows/'
```

   * A saída deste comando será: "Bem-vindo ao Windows! Só o Linux é Linux", pois a expressão descrita no sed faz a primeira alteração e já passa para a outra linha, caso queiramos alterar a linha inteira, basta adicionar a opção "g" ao final:
   * echo "Bem-vindo ao Linux! Só o Linux é Linux" | sed 's/Linux/Windows/g'

* Removendo as linhas do arquivo
* Suponhamos que temos um arquivo ips.txt e que queremos remover as dez primeiras linhas do arquivos, o comando utilizado seria:
```bash
sed '1,10 d' ips.txt
```
