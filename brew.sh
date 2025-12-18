#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

brew install coreutils
brew install findutils
brew install moreutils

brew install fontconfig
brew install git
brew install git-extras
brew install python
brew install speedtest-cli
brew install ssh-copy-id
brew install zsh
brew install fnm
brew install gh

# AI tools
brew install opencode
brew install --cask claude
brew install gh && gh extension install github/gh-copilot


# Casks
brew install --cask 1password
brew install --cask alfred
brew install --cask bartender
brew install --cask bruno
brew install --cask daisydisk
brew install --cask discord
brew install --cask github
brew install --cask iterm2
brew install --cask mounty
brew install --cask protonvpn
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask whatsapp

# Remove outdated versions from the cellar.
brew cleanup
