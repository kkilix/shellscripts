#!/bin/bash
#
# mysql.sh - instala ou remove o mysql
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
#  ---------------------------------------------------------------------
# 	Exemplos
#
#	instala o mysql:
#		$ sudo ./mysql.sh -i
#
#	remove o mysql:
#		$ sudo ./mysql.sh -r
#


###
# verifica se foi passado apenas 1 parametro ou se o parametro e valido
#
if [ $# -lt 1 ] || 
   [ $# -gt 1 ] || 
   ([ $1 != "-i" ] && [ $1 != "--install" ] &&
    [ $1 != "-r" ] && [ $1 != "--remove" ]); then
	echo -e "Uso: mysql.sh [OPÇÃO]\n"
	echo "-i, --install 	instala o banco de dados mysql"
	echo "-r, --remove 	remove o banco de dados mysql"
   	exit 1
fi
#
###


# limpa a tela
clear


###
# 
if [ $1 == "-i" ] || [ $1 == "--install" ]; then
	# instala

	echo -e "Instalando o mysql-server \033[41;1;37maguarde...\033[0m"
	# define o modo não interativo do instalador
	export DEBIAN_FRONTEND="noninteractive"

	# cria 2 seções com as respostas para o instalador
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password 123"
	sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 123"	

	# instala o mysql-server
	sudo apt-get -qqy install mysql-server #> /dev/null

	echo -e "Definindo a senha do usuário root do mysql para vazia \033[41;1;37maguarde...\033[0m"
	# remove a senha do usuário root do mysql
	mysql -uroot -p123 -e "FLUSH PRIVILEGES; SET PASSWORD FOR 'root'@'localhost' = PASSWORD('');" #> /dev/null 2>&1

	echo "Concluído"	
else
	# remove

	echo -e "Removendo mysql-server \033[41;1;37maguarde...\033[0m"
	# remove mysql-server
	sudo apt-get -qqy purge mysql-server

	echo -e "Removendo arquivos desnecessários \033[41;1;37maguarde...\033[0m"
	# remove arquivos
	sudo rm -rf /var/lib/mysql*
	sudo rm -rf /var/log/mysql*
	sudo rm -rf /etc/mysql*

	echo -e "Limpando instalador do sistema \033[41;1;37maguarde...\033[0m"
	# remove pacotes orfãos
	sudo apt-get autoremove --purge -qqy

	# limpa arquivos antigos de programas instalados
	sudo apt-get autoclean -qqy
	sudo apt-get clean -qqy

	echo "mysql removido com sucesso"
fi
#
###
