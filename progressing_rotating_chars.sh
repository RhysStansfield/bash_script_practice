#!/bin/bash

spin_states=(- \\ \| /)

function spin() {
  for ((i=0; i<8; i++))
  do
    state=$((i % ${#spin_states[@]}))
    printf "\b${spin_states[state]}"
    sleep .2
  done
  printf "\b#"
}

function multiple_spins() {
  printf "Working...  "
  for ((e=0; e<$1; e++))
  do
    spin
    printf " "
  done
  printf "Done!\n"
}

multiple_spins 10