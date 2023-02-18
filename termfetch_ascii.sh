#!/usr/bin/bash

# check shell and print corresponding ascii art

SHELL=$(basename "$SHELL")

case $SHELL in
  
  "fish")
    fish -c 'fish_logo normal normal normal'
    ;;
  "bash")
    cat ascii_bash
    ;;
  "zsh")
    cat ascii_zsh
    ;;
  *)
    cat ascii_bash
    ;;
esac

