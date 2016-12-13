#!/bin/bash
#
# remover_softwares_16.sh - remove softwares pre-instalados no ubuntu 16.04
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
#  ---------------------------------------------------------------------

###
# remove softwares
#
sudo apt-get purge gnome-calendar -qqy
sudo apt-get purge cheese -qqy
sudo apt-get purge remmina -qqy
sudo apt-get purge vino -qqy
sudo apt-get purge gnome-user-share -qqy
sudo apt-get purge usb-creator-gtk -qqy
sudo apt-get purge simple-scan -qqy
sudo apt-get purge deja-dup -qqy
sudo apt-get purge aisleriot -qqy
sudo apt-get purge gnome-mahjongg -qqy
sudo apt-get purge gnome-mines -qqy
sudo apt-get purge gnome-sudoku -qqy
sudo apt-get purge gnome-orca -qqy
sudo apt-get purge onboard -qqy
sudo apt-get purge libreoffice-math -qqy
sudo apt-get purge libreoffice-draw -qqy
sudo apt-get purge transmission-gtk -qqy
sudo apt-get purge webbrowser-app -qqy
sudo apt-get purge rhythmbox -qqy
sudo apt-get purge totem -qqy
sudo apt-get purge shotwell -qqy
sudo apt-get purge unity-control-center-signon -qqy
sudo apt-get purge imagemagick -qqy
sudo apt-get purge gnome-power-manager -qqy
sudo apt-get purge zeitgeist zeitgeist-core zeitgeist-datahub -qqy
sudo apt-get purge unity-lens-files -qqy


###
# remove pacotes orfãos
#
sudo apt-get autoremove --purge -qqy


###
# limpa arquivos antigos de programas instalados
#
sudo apt-get autoclean -qqy
sudo apt-get clean -qqy

