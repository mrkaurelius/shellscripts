#!/bin/bash

check_dependencies() {
for DEPENDENCY in $1
  do
    command -v $DEPENDENCY >/dev/null 2>&1 || 
      { echo >&2 "I require ${DEPENDENCY} but it's not installed.  Aborting."; exit 1; }
  done
}

check_dependencies "zsh bash apt"
