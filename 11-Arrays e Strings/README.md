# Arrays e Strings

* Um dos conceitos fundamentais de qualquer linguagem de programação é a utilização de arrays (ou vetores).

* Um array (ou vetor) é uma variável que carrega várias variáveis, que podem ser acessadas usando um índice.

* Existem várias formas de declarar um array em shell script.

* O modo mais simples é usar um índice na hora de criar uma variável:

```bash
A[3]=10
```

* Para usar um array, basta usar substituição de variáveis com o índice desejado:

```bash
echo ${A[3]}
```

* Vamos criar um array maior para usar nos próximos exemplos:

```bash
bike[7]=caloy
bike[9]=moonark
bike[0]=XiiMano
bike[11]=barraCircular
```

* Como imprimir todos os valores que estão guardados no array:

```bash
echo ${bike[*]}
```

* Outra forma (com tratamento especial para espaços):

```bash
echo ${bike[@]}
```

* Como imprimir todas as chaves usadas como índices para o array:

```bash
echo ${!bike[*]}
```

* Como imprimir o número ítens contidos no array:

```bash
echo ${#bike[*]}
```

* Como imprimir o número ítens contidos no array:

```bash
echo ${#bike[*]}
```

* Imprimindo o valor associado à chave 9:

```bash
echo ${bike[9]}
```

* Uma segunda forma (muito útil) para criar arrays é usando parêntesis:

```bash
bus=( setysa truns reunaidas Xorge )
echo ${bus[*]}
echo ${!bus[*]}
echo ${#bus[*]}
```

* Observe que como não atribuímos chaves aos valores, o sistems usa as chaves 0, 1, 2 e 3.

* Para adicionar um novo item ao final de um array podemos usar o seguinte comando:

```bash
bus[ ${ #bus[*] } ]=xicoBus
```

* Contudo, isto fica mais simples se usarmos a criação com parêntesis:

```bash
bus=( ${bus[*]}  ZeBus )
```

* A mesma técnica pode ser usada para adicionar um item ao início do array:

```bash
bus=( XuaoTur ${bus[*]} )
```

* Ou para concatenar dois arrays:

```bash
busbike=( ${bus[*]} ${bike[*]} )
```

* Os arrays em shell também permitem o seu fatiamento.

* O comando abaixo exibe os ítens do array busbike a partir da posição 3 (incluída):

```bash
echo ${bus[*]:3}
```

* Enquanto o comando seguinte exibe 2 ítens do array busbike a partir da posição 3 (incluída):

```bash
echo ${bus[*]:3:2}
```

* Por fim, os Arrays em shell permitem a utilização de strings como chaves (índices), os famosos arrays associativos.

* Para usá-los, devemos declarar o array como associativo usando o comando declare:

```bash
declare -A carros
carros[Xelta]=10
carros[XolkXixagen]=4
carros[Xyunxay]=5
```

* Utilizamos os arrays associativos da mesma forma que os arrays normais:

```bash
echo ${carros[*]}
echo ${!carros[*]}
echo ${#carros[*]}
echo ${carros[Xelta]}
```

* Observe que as chaves (índices) não (necessariamente) ficam na mesma ordem de quando foram criados.

* Para finalizar, é bem interessante saber que algumas operações que usamos sobre os arrays
também podem ser usadas com strings:

```bash
texto="Olha que coisa mais linda"
echo ${texto}
echo ${texto[*]}
echo ${#texto}
echo ${texto:1}
echo ${texto:2}
echo ${texto:3}
echo ${texto:3:10}
echo ${texto:3:11}
echo ${texto:3:15}
```

# Videoaula(s):

* Arrays e Strings: https://youtu.be/iV2AN-5vJrI?list=PLlfnoloSCPI2yAhYzUXE6V8-8DNC5nk0M

