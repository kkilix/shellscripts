#!/bin/bash
#
# launcher_position.sh - muda a posição do laucher
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
#  ---------------------------------------------------------------------
# 	Exemplos
#
#	mover a barra para baixo:
#		$ ./launcher_position.sh -b
#
#	mover a barra para esquerda
#		$ ./launcher_position.sh -l
#


###
# verifica se foi passado apenas 1 parametro ou se o parametro e valido
#
if [ $# -lt 1 ] || 
   [ $# -gt 1 ] || 
   ([ $1 != "-b" ] && [ $1 != "--bottom" ] &&
    [ $1 != "-l" ] && [ $1 != "--left" ]); then
	echo -e "Uso: launcher_position.sh [OPÇÃO]\n"
	echo "-b, --bottom 	launcher abaixo"
	echo "-l, --left 	launcher na esquerda"
   	exit 1
fi
#
###


# limpa a tela
clear


###
# 
if [ $1 == "-b" ] || [ $1 == "--bottom" ]; then		
	gsettings set com.canonical.Unity.Launcher launcher-position Bottom
else
	gsettings set com.canonical.Unity.Launcher launcher-position Left
fi
#
###

