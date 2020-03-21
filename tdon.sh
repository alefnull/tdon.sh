#!/usr/bin/env bash

function tdo() {
  i=1
  if [ $# == "0" ]; then
    echo "+-------+"
    echo "| todo: |"
    echo "+-------+"
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