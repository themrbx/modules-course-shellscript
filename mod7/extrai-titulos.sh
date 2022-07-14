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
# bash 4.4.0
#----------------------------------------------------------------------------
# Agradecimentos:
#
# Joãozinho - Encontrou um bug na parte de login.
#----------------------------------------------------------------------------
# VARIAVEIS
ARQUIVO_READ_TITULO="titulos.txt"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
#----------------------------------------------------------------------------
# TESTES
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
#----------------------------------------------------------------------------
# EXECUÇÃO
lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
  echo -e "${VERMELHO}Titulo: ${VERDE}${titulo_lxer}"
done < "$ARQUIVO_READ_TITULO"
#----------------------------------------------------------------------------
