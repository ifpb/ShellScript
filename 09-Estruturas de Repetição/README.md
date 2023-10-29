# Estruturas de Repetição

* Assim como todas as linguagens de programação modernas, o shell script também oferece estruturas capazes de repetir a execução de blocos de código até que determinada condição seja satisfeita.

* No bash, temos as seguintes estruturas de repetição: 'for-do-done', 'for-in-do-done', 'while-do-done' e 'until-do-done'.


### for - do - done:

* Estrutura utilizada quando se tem uma ideia muito boa sobre  número de vezes que o bloco deve ser executado.


```bash
for (( i=0; i<=10; i++ )) do
    echo -n "-"
done
echo ""

for (( x=0; x<=5; x++ )) do
    echo "Linha ${x}" >> arquivo.txt
done

```

* A parte 'i=0' é executada apenas uma vez, antes de qalquer execuçã dos comandos entre o do e o done.

* A condição 'i<=5' é avaliada antes de cada execução d bloco entre o do e o done. Caso a condição seja falsa, a execução do laço for é finalizada.

* A parte 'i++' é executada ao final de cada execução do bloco entre o do e o done.


### for - in - do - done:

* Utilizado quando se conhece um grupo de valores bem definido e deseja-se que uma variável obtenha um valor desde grupo a cada iteração.

```bash
for x in A B C D E; do
    touch ${x}
    echo ${x} >> ${x}
done

verbose="false"
for arg in ${*}; do
    [ "${arg}" == "-v" ] && verbose="true"
done

for img in $(ls *.jpg); do
    echo "Copiando arquivo ${img} ..."
    cp ${img} /mnt/backup/pictures
done
```

* Observe que o conjunto de valores que será atribuído à variável pode ser proveniente de uma substituição de variáveis (ex.: ${*}) ou de uma substituição de shell (ex.: $(ls) ).

* Comandos comumente utilizados junto ao for-in-do-done: seq, cat, grep, head, ls, users...


### while-do-done:
    
* Utilizado quando deseja-se que um conjunto de comandos seja executado enquanto determinada condição seja verdadeira:

```bash
while [ "${word}" != "END" ]; do
    echo "será executado até que se digite END"
    read word
done

while (( "${SECONDS}" <= 10 )); do
    echo "Já se passaram ${SECONDS} segundos"
    sleep 1
done
```  

* O laço while-do-done també pode ser usado para iterar sobre cada linha de um arquivo de entrada.

* Para tal, combina-se o while-do-done com o comando read e o redirecionador '<'.

```bash
while rad linha; do
    echo ${linha}
done < arquivo.txt
```


### until - do - done:

* Muito semelhando ao while-do-done, contudo o bloco de comandos é executado até que a condição seja satisfeita.


```bash
echo "linha" > arquivo
until (( $(cat arquivo | wc -l) == 10 )); do
    echo "linha" >> arquivo
    echo "O arquivo já possui $(cat arquivo | wc -l) linha(s)"
done

```

# Videoaula(s)

* Laço For: https://youtu.be/nWePERqMD4A?feature=shared
* Laço while: https://youtu.be/26Xp-eiujqk?feature=shared

