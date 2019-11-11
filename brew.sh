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
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services

brew install coreutils
brew install findutils
brew install moreutils

brew install fontconfig
brew install git
brew install git-extras
brew install python
brew install rbenv
brew install speedtest-cli
brew install ssh-copy-id
brew install zsh

# QMK software
brew tap homebrew/cask-drivers
brew cask install qmk-toolbox

# Casks
brew cask install 1password
brew cask install alfred
brew cask install bartender
brew cask install cocoarestclient
brew cask install daisydisk
brew cask install discord
brew cask install dropbox
brew cask install figma
brew cask install google-chrome
brew cask install hyper
brew cask install iterm2-beta
brew cask install mounty
brew cask install mpv
brew cask install philips-hue-sync
brew cask install plex-server
brew cask install sabnzbd
brew cask install skype
brew cask install slack-beta
brew cask install spectacle
brew cask install spotify
brew cask install the-unarchiver
brew cask install tidal
brew cask install tower
brew cask install tunnelblick
brew cask install visual-studio-code
brew cask install whatsapp

# Remove outdated versions from the cellar.
brew cleanup
