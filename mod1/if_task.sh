#!/usr/bin/env bash
##Essa tarefa compara se o primeiro parametro é maior que 10
if [[ "$1" -gt "10" ]]; then
  echo "$0" && echo "$$"
fi


##OUTRAS FORMAS DE RESOLVER
[ $1 -gt 10 ] && echo "Nome do Script: $0 | PID de execução: $$"
