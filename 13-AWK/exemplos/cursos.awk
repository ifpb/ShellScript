#IMPRIMINDO APENAS OS CURSOS DA LISTA ALUNOS.TXT
BEGIN { FS=","; print "Cursos dos alunos: \n" }
{
	print $NF
}
END { print "\nFim do arquivo" }

#FS CONSIDERA "," COMO SEPARADOR DE CAMPOS
#$NF É O ÚLTIMO CAMPO DA LINHA.
#OBS: É necessário digitar na linha de comandos o comando: awk -f curso.awk alunos.txt
