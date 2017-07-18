#!/bin/bash

BIN_PATH="$HOME/.jumphost/bin"

if [[ $($BIN_PATH/find-hosts.sh $1 | wc -l) -eq 1 ]]; then
  hostname=$($BIN_PATH/find-hosts.sh $1 | cut -f 2)
  username=$($BIN_PATH/find-hosts.sh $1 | cut -f 3)
  echo ssh $username@$hostname
  ssh $username@$hostname
fi
