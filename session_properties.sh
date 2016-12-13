#!/bin/bash
#
# session_properties.sh - mostra ou oculta os serviços que iniciam com a sessao do sistema
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
#  ---------------------------------------------------------------------
# 	Exemplos
#
#	oculta os serviços:
#		$ sudo ./session_properties.sh -h
#
#	mostra os serviços:
#		$ sudo ./session_properties.sh -s
#


###
# verifica se foi passado apenas 1 parametro ou se o parametro e valido
#
if [ $# -lt 1 ] || 
   [ $# -gt 1 ] || 
   ([ $1 != "-h" ] && [ $1 != "--hide" ] &&
    [ $1 != "-s" ] && [ $1 != "--show" ]); then
	echo -e "Uso: session_properties.sh [OPÇÃO]\n"
	echo "-h, --hide 	oculta os serviços"
	echo "-s, --show 	mostra os serviços"
   	exit 1
fi
#
###


# limpa a tela
clear


###
# 
if [ $1 == "-h" ] || [ $1 == "--hide" ]; then
	# oculta os serviços
	echo -e "Ocultando os serviços \033[41;1;37maguarde...\033[0m"
	sudo sed -i "s/NoDisplay=false/NoDisplay=true/g" /etc/xdg/autostart/*.desktop
else
	# mostra os serviços
	echo -e "Desocultando os serviços \033[41;1;37maguarde...\033[0m"
	sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
fi

# abre o gnome-session-properties
gnome-session-properties &
###

