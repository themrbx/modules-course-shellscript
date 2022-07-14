#!/usr/bin/env bash

VAR=""
VAR2=""

if [[ "$VAR"="$VAR2" ]]; then
  echo "são iguais."
fi

if [[ "$VAR"="$VAR2" ]]
then
  echo "são iguais."
fi

if test "$VAR" = "$VAR2"; then
  echo "são iguais."
fi

[ "$VAR"="$VAR2" ] || echo "São iguais"

|| = OU
&& = AND
!= = DIFERENTE
