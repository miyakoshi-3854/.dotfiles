#!/bin/bash

set -e

DOTFILE_DIR="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILE_DIR/$1"
  local dest="$HOME/$1"

  mkdir -p "$(dirname "$dest")"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "backup: $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi

  ln -sfn "$src" "$dest"
  echo "linked: $dest -> $src"
}

link .zshrc
link .config/git/config
link .config/gh/config.yml
link .config/mise/config.toml
link .config/gwq/config.toml

echo ""
echo "install.sh done. Run 'mise install' to install tools."
