#!/usr/bin/env bash
#
# boas-praticas-task - roda um script que a cada iteração diminui a quantidade
# de caracteres até ficar somente um asterisco.
#
# Site: meusite.com.br
# Autor: Matheus Augusto
# Mantenedor: Matheus Augusto
#----------------------------------------------------------------------------
# Testado em:
# bash 5.1.16
#----------------------------------------------------------------------------
# Agradecimentos:
# Ao professor Mateus Muller por disponibilizar um conteúdo desse porte tão grande.
#----------------------------------------------------------------------------
# VARIAVEIS
COMECA=0
ATE=100
#----------------------------------------------------------------------------
# TESTES
[ $COMECA -ge $ATE ] && exit 1
#----------------------------------------------------------------------------
# EXECUÇÃO
for i in $(seq $COMECA $ATE); do #roda o array 100 vezes
  for j in $(seq $i $ATE); do #roda de N vezes até 100 vezes
    printf "*";
  done;
    printf "\n"; #quebra linha
done
#----------------------------------------------------------------------------
