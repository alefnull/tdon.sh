#!/usr/bin/env bash

[ -z "$TODO" ] && export TODO="$HOME/.tdon"

function tdo() {
  [ -f "$TODO" ] || touch "$TODO"
  i=1
  if [ $# == "0" ]; then
    while read -r line; do
    echo "$line"
    i=$((i+1))
    done < "$TODO"; else
      echo "• $*" >> "$TODO";
  fi
}

function tdn() {
  sed -i -e "/$*/d" "$TODO";
}
