#!/bin/bash

echo "Installing nix..."
yay -S --noconfirm --needed nix

echo "Adding unstable channel for nix and update it..."
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update

echo "Starting nix daemon service..."
# systemctl start nix-daemon.service
