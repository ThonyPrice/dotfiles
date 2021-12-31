#!/bin/bash
## -------------------------------------
## My Dotfiles
## - ...
## - ...
## -------------------------------------
echo "Begin install...";

## -------------------------------------
## Setup File Structure
## -------------------------------------
echo "Setup File Structure...";
mkdir -p /home/thony/Git;
mkdir -p /home/thony/.config/nvim;

## -------------------------------------
## Package Management
## -------------------------------------
echo "Manage Packages...";
pacman -Syu

pacman -S acpilight --noconfirm --needed
pacman -S fish --noconfirm --needed
pacman -S kitty --noconfirm --needed
pacman -S neovim --noconfirm --needed
pacman -S npm --noconfirm --needed
pacman -S python-pip --noconfirm --needed
pacman -S ranger --noconfirm --needed
pacman -S rofi --noconfirm --needed
pacman -S slack-desktop --noconfirm --needed
pacman -S spotify --noconfirm --needed
pacman -S stow --noconfirm --needed
pacman -S ttf-jetbrains-mono --noconfirm --needed

## -------------------------------------
## Apply Application Configuration
## -------------------------------------
echo "Stow Configurations...";
stow kitty/ -t /home/thony/.config/kitty/
mv /home/thony/.config/rofi/config.rasi /home/thony/config.old; \
    echo "Invalidate default rofi configuration"
stow rofi/ -t /home/thony/.config/rofi/
stow nvim/ -t /home/thony/.config/nvim/

## -------------------------------------
## Needs work
## -------------------------------------
# yay -S spicetify-cli
# sudo chmod a+wr /opt/spotify
# sudo chmod a+wr /opt/spotify/Apps -R

## Fish Setup
chsh -s ${which fish}

## vim Setup
# Install vim-plug (put in init.vim instead)
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
# https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p .local/share/nvim/backup
python3 -m pip install --user --upgrade pynvim

## Spicetify Setup, https://spicetify.app/docs/getting-started/basic-usage
# spicetify
# spicetify backup apply enable-devtool
