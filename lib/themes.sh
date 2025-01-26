#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @aurora)"

case $SELECTED_THEME in
"onedark")
  declare -A THEME=(
    ["background"]="#282c34"
    ["foreground"]="#c8ccd4"
    ["highlight"]="#3e4451"
    ["active"]="#353b45"
    ["blue"]="#61afef"
    ["cyan"]="#56b6c2"
    ["green"]="#98c379"
    ["red"]="#be5046"
    ["yellow"]="#e5c07b"
  )
  ;;

"onenord")
  declare -A THEME=(
    ["background"]="#282c34"
    ["foreground"]="#c8ccd4"
    ["highlight"]="#3e4451"
    ["active"]="#353b45"
    ["blue"]="#81A1C1"
    ["cyan"]="#88C0D0"
    ["green"]="#A3BE8C"
    ["red"]="#D57780"
    ["yellow"]="#EBCB8B"
  )
  ;;

"nord-dark")
  declare -A THEME=(
    ["background"]="#2E3440"
    ["foreground"]="#C8D0E0"
    ["highlight"]="#4C566A"
    ["active"]="#3B4252"
    ["blue"]="#81A1C1"
    ["cyan"]="#88C0D0"
    ["green"]="#A3BE8C"
    ["red"]="#D57780"
    ["yellow"]="#EBCB8B"
  )
  ;;

"nord-light")
  declare -A THEME=(
    ["background"]="#EFF0F2"
    ["foreground"]="#4C566A"
    ["highlight"]="#D8DEE9"
    ["active"]="#2E3440"
    ["blue"]="#3879C5"
    ["cyan"]="#3EA1AD"
    ["green"]="#48A53D"
    ["red"]="#CB4F53"
    ["yellow"]="#BA793E"
  )
  ;;

"catppuccin-mocha")
  declare -A THEME=(
    ["background"]="#1e1e2e"
    ["foreground"]="#cdd6f4"
    ["highlight"]="#9399b2"
    ["active"]="#7f849c"
    ["blue"]="#89b4fa"
    ["cyan"]="#74c7ec"
    ["green"]="#a6e3a1"
    ["red"]="#f38ba8"
    ["yellow"]="#f9e2af"
  )
  ;;

*)
  declare -A THEME=(
    ["background"]="#282c34"
    ["foreground"]="#c8ccd4"
    ["highlight"]="#3e4451"
    ["active"]="#353b45"
    ["blue"]="#81A1C1"
    ["cyan"]="#88C0D0"
    ["green"]="#A3BE8C"
    ["red"]="#D57780"
    ["yellow"]="#EBCB8B"
  )
  ;;
esac

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
