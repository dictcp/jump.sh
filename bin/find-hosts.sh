#!/bin/bash

CACHE_DIR="$HOME/.jumphost/cache"

grep --no-filename -E "^$1" $CACHE_DIR/*.findhost.tsv

