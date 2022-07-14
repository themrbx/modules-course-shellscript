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
#----------------------------------------------------------------------------
# VARIAVEIS
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $0 - [OPÇÕES]

  -h - Menu de ajuda
  -v - Versão
  -s - Ordenar a saída
"
VERSAO="v1.0"
#----------------------------------------------------------------------------
# EXECUÇÃO
if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi
if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"
#----------------------------------------------------------------------------
