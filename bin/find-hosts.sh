#!/bin/bash

CACHE_DIR="$HOME/.jumphost/cache"
GEN_DIR="$HOME/.jumphost/generator.d"

for i in $(find $GEN_DIR -name '*.sh' -type f); do [ -x $i ] && $i; done

grep --no-filename -E "^$1" $CACHE_DIR/*.findhost.tsv

