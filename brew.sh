#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Extra taps
brew tap
brew tap homebrew/core
brew tap homebrew/services

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


# Casks
brew install --cask 1password
brew install --cask alfred
brew install --cask bartender
brew install --cask cocoarestclient
brew install --cask daisydisk
brew install --cask discord
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask iterm2-beta
brew install --cask mounty
brew install --cask mpg
brew install --cask philips-hue-sync
brew install --cask skype
brew install --cask slack-beta
brew install --cask spectacle
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask tidal
brew install --cask tower
brew install --cask visual-studio-code
brew install --cask whatsapp

# Remove outdated versions from the cellar.
brew cleanup
