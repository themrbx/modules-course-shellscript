#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Autor: Matheus Augusto
# Mantenedor: Matheus Augusto
#
#----------------------------------------------------------------------------
# Esse script extrai usuários do /etc/passwd tendo a possibilidade de colocar
# em maiusculo e em ordem alfabetica.
#
# Exemplos:
#  $ ./lista-usuarios.sh -s -m
#  Nesse exemplo o script ficará em maiusculo e ordem alfabetica
#----------------------------------------------------------------------------
# Histórico
#
# v1.0 05/07/2022, Matheus Augusto
#    - Adicionado parâmetros -h -v e -s
#----------------------------------------------------------------------------
# Testado em:
# bash 5.16.1
#-----------------------------------VARIAVEIS-----------------------------------
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

  -h - Menu de ajuda
  -v - Versão
  -s - Ordenar a saída
"
VERSAO="v1.1"
#-----------------------------------EXECUÇÃO------------------------------------
case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0    ;;
  -v) echo "$VERSAO" && exit 0          ;;
  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo "$USUARIOS"                  ;;
esac





#----------------------------------------------------------------------------
