#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
SSH_DIR="$HOME/.ssh"

if ! [[ -f "$SSH_DIR/id_rsa" ]]; then
  mkdir -p "$SSH_DIR"
  chmod 700 "$SSH_DIR"
  ssh-keygen -b 4096 -t rsa -f "$SSH_DIR/id_rsa" -N "" -C "thonyprice@gmail.com"
  cat "$SSH_DIR/id_rsa.pub" >> "$SSH_DIR/authorized_keys"
  chmod 600 "$SSH_DIR/authorized_keys"
fi

if ! [ -x "$(command -v ansible)" ]; then
  # TODO: Do not install pip if already installed
  curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
  python3 /tmp/get-pip.py --user
  # Install Ansible
  python3 -m pip install --user ansible
fi

cd "$DOTFILES_DIR"
ansible-playbook --diff "$DOTFILES_DIR/main.yml" --ask-become-pass
