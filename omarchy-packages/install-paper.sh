#!/bin/bash
# Installs or updates Paper Desktop from the local PKGBUILD in pkgbuilds/.
# The AUR paper-desktop-bin is stale (pulls in webkit2gtk), so we build our own.
# The PKGBUILD always fetches the latest deb, so re-run this to update:
#   ~/git/dotfiles/omarchy-packages/install-paper.sh

set -e

echo "Installing paper..."
build_dir=$(mktemp -d)
trap 'rm -rf "$build_dir"' EXIT

cp "$(dirname "$(realpath "$0")")/pkgbuilds/paper-desktop-bin/PKGBUILD" "$build_dir/"
cd "$build_dir"
makepkg -si --cleanbuild --noconfirm
