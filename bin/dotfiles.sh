#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

if ! [ -x "$(command -v ansible)" ]; then
  # TODO: Do not install pip if already installed
  curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
  python3 /tmp/get-pip.py --user
  # Install Ansible
  python3 -m pip install --user ansible
fi

cd "$DOTFILES_DIR"
ansible-playbook --diff "$DOTFILES_DIR/main.yml" --ask-become-pass 
