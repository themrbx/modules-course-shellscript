#!/usr/bin/env bash

NOME="MATHEUS AUGUSTO"

echo $NOME

NUM1=10
NUM2=20

TOTAL=$(("$NUM1+$NUM2"))

echo $TOTAL
echo "---------------------------------"


echo "parametro 1: $1"
echo "parametro 2: $2"

echo "Todos os parametros: $*"

echo "Quantidade de parametros: $#"

echo "Saída do ultimo comando: $?"

echo "PID: $$"

echo "Nome do script: $0"
