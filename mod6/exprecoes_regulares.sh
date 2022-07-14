#!/usr/bin/env bash

# ^ => todos os começos de uma linha
# Exemplo: Todas as linhas que começam com "A";

# h$ => Tudo que terminar com h, exemplo...

# lista de dígitos pode ser representado por colchete.
# ^[bc] => tudo que começa com b ou c

# ^[^bc] => Significa uma negação. Tudo que comece que não seja com b ou c

# grep "^.[a]" => o ponto significa qualquer coisa e que o segundo digito seja "a"

# egrep "^.{50,60}$" /etc/passwd => Pega arquivos em uma linha que contenha de 50 a 60 caracteres.
# O egrep é um atalho para o comando grep que é utilizado para o uso de
# expressẽos regulares.

$ cut -d : -f 1 /etc/group | grep "^r"

$ cut -d : -f 1 /etc/group | grep "t$"

$ cut -d : -f 1 /etc/group | grep "^r.*t$"

$ cut -d : -f 1 /etc/group | grep "[ed]$"

$ cut -d : -f 1 /etc/group | grep "[^ed]$"

$ cut -d : -f 1 /etc/group | grep "^.[ud]"

$ cut -d : -f 1 /etc/group | egrep "^.{2,4}$"

$ cut -d : -f 1 /etc/group | egrep "^r|^s"
