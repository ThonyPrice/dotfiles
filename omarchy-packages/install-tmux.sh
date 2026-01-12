#!/bin/bash

echo "Installing tmux..."
yay -S --noconfirm --needed tmux

# Install TPM (Tmux Plugin Manager)
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  echo "Installing TPM..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
  echo "TPM already installed, skipping..."
fi

# Install omarchy-tmux theme sync
if [ ! -d "$HOME/.config/tmux/omarchy-themes" ]; then
  echo "Installing omarchy-tmux theme sync..."
  curl -fsSL https://raw.githubusercontent.com/joaofelipegalvao/omarchy-tmux/main/scripts/omarchy-tmux-install.sh | bash
else
  echo "omarchy-tmux already installed, skipping..."
fi
