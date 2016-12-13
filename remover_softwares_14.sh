#!/bin/bash
#
# remover_softwares_14.sh - remove softwares pre-instalados no ubuntu 14.04
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
#  ---------------------------------------------------------------------


###
# remove softwares
#

#Acessorios
sudo apt-get purge zeitgeist zeitgeist-core zeitgeist-datahub -qqy
sudo apt-get purge unity-lens-files -qqy
sudo apt-get purge gnome-contacts -qqy
sudo apt-get purge deja-dup -qqy

#Acesso universal
sudo apt-get purge gnome-orca -qqy
sudo apt-get purge onboard -qqy

#Ciencias e engenharia
sudo apt-get purge libreoffice-math -qqy

#Escritorio
sudo apt-get purge unity-scope-gdrive -qqy
sudo apt-get purge libreoffice-draw -qqy

#Graficos
sudo apt-get purge simple-scan -qqy
sudo apt-get purge shotwell-common -qqy
sudo apt-get purge unity-lens-photos -qqy
sudo apt-get purge eog -qqy

#Internet
sudo apt-get remove transmission-gtk -qqy
sudo apt-get remove vino -qqy
sudo apt-get remove empathy -qqy
sudo apt-get remove webbrowser-app -qqy
sudo apt-get remove remmina -qqy

#Jogos
sudo apt-get purge aisleriot -qqy
sudo apt-get purge gnome-mahjongg -qqy
sudo apt-get purge gnome-mines -qqy
sudo apt-get purge gnome-sudoku -qqy

#Multimidia
sudo apt-get purge cheese -qqy
sudo apt-get purge brasero -qqy
sudo apt-get purge rhythmbox -qqy
sudo apt-get purge totem -qqy

#Temas e tweaks
sudo apt-get purge usb-creator-gtk  -qqy
sudo apt-get purge landscape-client-ui-install -qqy
sudo apt-get purge gnome-user-share -qqy

#Sem categoria
sudo apt-get purge apturl -qqy
sudo apt-get purge evolution-data-server-online-accounts -qqy
sudo apt-get purge ibus-pinyin -qqy


###
# remove pacotes orfãos
#
sudo apt-get autoremove --purge -qqy


###
# limpa arquivos antigos de programas instalados
#
sudo apt-get autoclean -qqy
sudo apt-get clean -qqy
