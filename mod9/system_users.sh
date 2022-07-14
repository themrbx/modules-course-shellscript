#!/usr/bin/env bash
#
# nome-do-script.sh - breve descrição
#
# Site: meusite.com.br
# Autor: Matheus Augusto
# Mantenedor: Nome
#
#----------------------------------------------------------------------------
# Aqui faço uma descrição mais detalhada do meu programa, explicando a forma
# de utilizar.
#
# Exemplos:
#   $ ./nome-do-script.sh -d 1
#   Nesse exemplo o script será executado no modo debug nivel 1
#----------------------------------------------------------------------------
# Histórico
#
# v1.0 10/05/2022, Autor da mudança:
# - O que mudou?
# v2.0 12/06/2022, Autor da mudança:
# - O que mudou?
#----------------------------------------------------------------------------
# Testado em:
#   bash 4.4.0
#--------------------------------VARIAVEIS--------------------------------------
ARQUIVO_BD="bd.txt"
SEP=:
TEMP=temp.$$
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
#--------------------------------TESTES-----------------------------------------
[ ! -e "$ARQUIVO_BD" ] && echo "ERRO. Banco de dados não encontrado" && exit 1
[ ! -r "$ARQUIVO_BD" ] && echo "ERRO. Arquivo não tem permissão de leitura" && exit 1
[ ! -w "$ARQUIVO_BD" ] && echo "ERRO. Arquivo não tem permissão de escrita" && exit 1
[ ! -x "$(which dialog)" ] && sudo apt install dialog 1 > /dev/null 2>&1
#-------------------------------FUNÇÕES-----------------------------------------

ListaUsuarios () {
  egrep -v "^#|^$" "$ARQUIVO_BD" | tr : ' ' > "$TEMP"
  dialog --title "Lista de Usuários" --textbox "$TEMP" 20 40
  rm -f "$TEMP"
}

ValidaExistenciaUser () {
  grep -i -q "$1$SEP" "$ARQUIVO_BD"
}

InsereUser () {
  local nome="$(echo $1 | cut -d $SEP -f 2)"

  if ValidaExistenciaUser "$nome"; then
    echo "ERRO. Usuário já existe na base!"
  else
    echo "$*" >> "$ARQUIVO_BD"
    echo "Usuário cadastrado com sucesso!"
  fi
}

ApagaUser () {
  ValidaExistenciaUser "$1" || return

  grep -i -v "$1$SEP" "$ARQUIVO_BD" > "$TEMP"
  mv "$TEMP" "$ARQUIVO_BD"
  echo "Usuário removido com sucesso!"
  OrdenaList
}

OrdenaList () {
  sort "$ARQUIVO_BD" > "$TEMP"
  mv "$TEMP" "$ARQUIVO_BD"
}
#------------------------------EXECUÇÃO-----------------------------------------
