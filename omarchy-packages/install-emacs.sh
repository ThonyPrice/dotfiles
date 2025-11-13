#!/bin/bash

EMACSDIR="${HOME}/.emacs.d"
DOOMDIR="${EMACS_DIR}/bin/doom"
DOOM_CONFIG="${HOME}/.doom.d"

echo "Install Doom Emacs..."
yay -S --noconfirm --needed git emacs ripgrep fd

echo "Cloning doom config..."
# Docs: https://github.com/doomemacs/doomemacs/blob/master/docs/getting_started.org#doom-emacs
if [ ! -d "$EMACSDIR" ]; then
  git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
else
  echo "Upstream doom config already cloned!"
fi

echo "Clone private doom config..."
if [ ! -d "$DOOM_CONFIG" ]; then
  git clone https://github.com/ThonyPrice/doom-emacs-private.git ~/.doom.d
  echo -e "\n----- Doom emacs ready to be installed -----"
  echo "Run: ~/.emacs.d/bin/doom install"
  echo -e "---------------------------------------\n"
else
  echo "Private doom config already cloned!"
fi


