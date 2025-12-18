#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# This script is kept for backwards compatibility.
# Prefer using: brew bundle install --file=~/dotfiles/Brewfile

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we're using the latest Homebrew.
brew update

# Install everything from Brewfile
brew bundle install --file=~/dotfiles/Brewfile

# Install gh-copilot extension
gh extension install github/gh-copilot 2>/dev/null || true

# Remove outdated versions from the cellar.
brew cleanup

echo "Done! Run 'brew bundle install --file=~/dotfiles/Brewfile' in the future to sync."
