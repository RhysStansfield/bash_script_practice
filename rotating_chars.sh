#!/bin/bash

spin_states=(- \\ \| /)

function spin() {
  printf "Working...  "
  printf $1
  printf "  "
  for ((i=0; i<$1; i++))
  do
    state=$((i % ${#spin_states[@]}))
    printf "\b${spin_states[state]}"
    sleep .2
  done
  printf "\n"
}

spin 10