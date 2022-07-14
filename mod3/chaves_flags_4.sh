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
# v1.3 06/07/2022, Matheus Augusto
#    - Adicionado novas features
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
  -m - Coloca em maiúsculo
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
#-----------------------------------EXECUÇÃO------------------------------------
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0              ;;
    -v) echo "$VERSAO" && exit 0                    ;;
    -s) CHAVE_ORDENA=1                              ;;
    -m) CHAVE_MAIUSCULO=1                           ;;
     *) echo "Opção Inválida, valie o -h" && exit 1 ;;
  esac
  shift
done
[ $CHAVE_ORDENA -eq 1 ]    && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"

#----------------------------------------------------------------------------
