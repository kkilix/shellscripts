#!/bin/bash
#
# remover_overlay_scrollbars.sh - remove as barras overlay scrollbars
#
# Site      : https://github.com/kkilix/shellscripts
# Autor     : Carlos Antonio da Silva
#
# 


###
# remove overlay scrollbars
#
sudo apt-get purge overlay* -qqy


###
# remove pacotes orfãos
#
sudo apt-get autoremove --purge -qqy


###
# limpa arquivos antigos de programas instalados
#
sudo apt-get autoclean -qqy
sudo apt-get clean -qqy
