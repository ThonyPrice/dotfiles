#!/bin/bash

# === Check required dependecies ===

# return 1 if global command line program installed, else 0
function program_is_installed {
  local return_=1
  type $1 >/dev/null 2>&1 || { local return_=0; }
  echo "$return_"
}

function attempt_install {
  printf "\n---> Hold my %s, attempting to install $d for you\n" $'\360\237\215\272'
  # Add system specific installer 
  brew install $d
}

# display a message in red with a cross by it
function echo_fail {
  printf "\e[31m✘ ${1}"  # echo first argument in red
  printf "\033\e[0m"     # reset colours back to normal
}

# display a message in green with a tick by it
function echo_pass {
  printf "\e[32m✔ ${1}"
  printf "\033\e[0m"
}

# echo pass or fail
function echo_if {
  if [ $1 == 1 ]; then
    echo_pass $2
  else
    echo_fail $2
    attempt_install $d
  fi
}

# Command line programs
echo -e "\n ~~~ CHECKING REQUIRED DEPENDENCIES ~~~ \n"

declare -a dependencies=("git" "vim" "tmux" "stow" "zsh")
for d in "${dependencies[@]}"
do
  echo "$d $(echo_if $(program_is_installed $d))"
done

