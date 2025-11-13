#!/bin/bash

echo "Installing nix..."
if pacman -Qi nix > /dev/null ; then
  echo "Nix is already installed!"
  exit 0
fi

yay -S --noconfirm --needed nix

echo "Adding unstable channel for nix and update it..."
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update

echo "Starting nix daemon service..."
sudo systemctl enable --now nix-daemon.service
