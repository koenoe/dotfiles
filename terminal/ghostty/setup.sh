#!/usr/bin/env bash

GHOSTTY_CONFIG_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"
GHOSTTY_XDG_DIR="$HOME/.config/ghostty"
DOTFILES_GHOSTTY_DIR="$HOME/dotfiles/terminal/ghostty"

mkdir -p "$GHOSTTY_CONFIG_DIR"
mkdir -p "$GHOSTTY_XDG_DIR/themes"

if [[ -f "$GHOSTTY_CONFIG_DIR/config" && ! -L "$GHOSTTY_CONFIG_DIR/config" ]]; then
    mv "$GHOSTTY_CONFIG_DIR/config" "$GHOSTTY_CONFIG_DIR/config.backup"
fi

ln -sf "$DOTFILES_GHOSTTY_DIR/config" "$GHOSTTY_CONFIG_DIR/config"

for theme in "$DOTFILES_GHOSTTY_DIR/themes/"*; do
    [[ -f "$theme" ]] && ln -sf "$theme" "$GHOSTTY_XDG_DIR/themes/$(basename "$theme")"
done
