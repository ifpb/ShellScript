### Exemplos

* Levando em consideração o arquivo maquinas.txt, caso fosse realizado um update na empresa e todos os PCS que possuíam Windows passassem a ser Linux, o comando utilizado para a modificação do arquivo seria:
``` bash
sed -i 's/Windows/Linux/' maquinas.txt
```

   * Onde o -i é a opção de alterar o arquivo, "s" é a opção de substituir uma palavra por outra.

* Caso o update fosse geral e os PCS com Windows e macOS virassem PCS com Linux, o comando utilizado seria:
``` bash
sed -i 's/Windows\|macOS/Linux/' maquinas.txt
```

* Caso o update fosse apenas nos 5 primeiros computadores e todos se tornassem Linux, o comando seria:
``` bash
sed -i '1,5s/Windows\|macOS/Linux/' maquinas.txt
```
