#!/usr/bin/env bash

find / -iname "*.so" \
       -user mrb     \
       -type f       \
       -size +1M     \
       -exec ls {}   \;
