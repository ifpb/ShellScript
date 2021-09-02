#A presença do BEGIN e do END não são obrigatórias, o comando funciona da mesma forma.
#OBS: É necessário digitar na linha de comandos o comando: awk -f nomes.awk alunos.txt

{
	print $1
}
