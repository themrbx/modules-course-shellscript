#!/usr/bin/env bash

for i in $(seq 0 10); do
  if [ $(($i % 2)) -eq 0 ]; then
    echo "$i eh divisivel por dois"
  fi
done
