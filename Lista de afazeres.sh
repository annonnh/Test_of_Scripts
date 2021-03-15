#!/bin/bash
echo "Bem vindo a sua lista de tarefas diárias, por favor digite seus afazeres de hoje."
read afazeres
echo $afazeres >> /home/anon/Desktop/TESTE/Listadetarefas.txt
echo "Deseja fazer outra lista de afazeres? Se sim digite 1 se não digite 2"
read escolha
if [ $escolha -eq 1 ];
then
	rm /home/anon/Desktop/TESTE/Listadetarefas.txt	
	echo "Digite sua nova lista de afazeres"
	read nova 
	echo $nova >> /home/anon/Desktop/TESTE/Novalistadeafazeres.txt
else 
	echo "Até mais"
fi


