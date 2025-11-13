#!/bin/bash


echo "Installing zsh..."
if pacman -Qi omarchy-zsh > /dev/null ; then
  echo "Zsh is already installed!"
  exit 0
fi

yay -S --noconfirm --needed omarchy-zsh

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
