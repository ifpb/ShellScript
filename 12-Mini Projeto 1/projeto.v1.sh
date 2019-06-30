#!/bin/bash

function diretorio () {
	echo "*** Os diretorios são: "
	for i in $(ls); do
		if [ -d $i ]; then
			echo "     $i"
		fi
	done
}

function arquivo () {
	echo "*** Os arquivos são: "
	for j in $(ls); do
		if [ -f $j ]; then
			echo "     $j"
		fi
	done
}

while true; do
	clear
	echo "*** SEJA BEM VINDO $(whoami) AO PROJETO ***"
	echo "*** VC ESTÁ NO $(pwd) ***"
	echo "___________________________________________"
	echo "*** Os arquivos são: "
	for i in $(ls); do
		if [ -f $i ]; then
			echo "     $i"
		fi
	done
	echo "__________________________________________"
	echo "*** Os diretorios são: "
	for j in $(ls); do
		if [ -d $j ]; then
			echo "     $j"
		fi
	done
	echo "__________________________________________"
	echo "Deseja fazer o que?"
	echo -n "a) ler um arquivo                         "
	echo "b) entrar em um diretorio"
	echo -n "c) ver uma preview do arquivo             "
	echo "d) deletar um arquivo"
	echo -n "e) deletar um diretorio                   "
	echo "f) copiar um arquivo"
	echo -n "g) editar um arquivo                      "
	echo "h) voltar para o diretorio anterior"
	echo -n "i) mostrar diretório atual                "
	echo "j) limpar a tela"
	echo "q) sair do menu"
	echo ""
	read -p "digite uma opção: " op
	if [ $op == "a" ]; then
		arquivo
		read -p "Digite qual arquivo: " arq
		if test -f $arq; then
			cat $arq
		else
			echo "vc não digitou um arquivo ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "b" ]; then
		diretorio
		read -p "Digite um diretorio: " dir
		if test -d $dir; then
			cd $dir
		else
			echo "vc não digitou um diretorio ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "c" ]; then
		arquivo
		read -p "Digite qual arquivo: " arq
		if test -f $arq; then
			head $arq
		else
			echo "vc não digitou um arquivo ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "d" ]; then
		arquivo
		read -p "Digite qual arquivo: " arq
		if test -f $arq; then
			rm -r $arq
		else
			echo "vc não digitou um arquivo ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "e" ]; then
		diretorio
		read -p "Digite qual diretorio: " dir
		if test -d $dir; then
			rmdir $dir
		else
			echo "vc não digitou um diretorio ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "f" ]; then
		arquivo
		read -p "Digite qual arquivo: " arq
		if test -f $arq; then
			read -p "Digite como quer salvar: " sal
			cp $arq $sal
		else 
			echo "vc não digitou um arquivo ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "g" ]; then
		arquivo
		read -p "Digite qual arquivo: " arq
		if test -f $arq; then
			vim $arq
		else
			echo "vc não digitou um arquivo ou ele não existe"
			sleep 5
		fi
	fi

	if [ $op == "h" ]; then
		arquivo
		diretorio
		if [ $(pwd) != "/" ];then
			cd ..
		else
			echo "você está no topo"
			sleep 5
		fi	

	fi
	
	if [ $op == "i" ]; then
		pwd
		sleep 5
	fi 

	if [ $op == "j" ]; then
		clear
	fi

	if [ $op == "q" ]; then
		exit 1
	fi
done
