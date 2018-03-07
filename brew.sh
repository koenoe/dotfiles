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
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/services

brew install coreutils
brew install moreutils
brew install findutils

brew install git
brew install zsh
brew install rbenv
brew install ssh-copy-id
brew install speedtest-cli
brew install python
brew install fontconfig

# Casks
brew cask install 1password
brew cask install dropbox
brew cask install mpv
brew cask install sequel-pro
brew cask install tidal
brew cask install whatsapp
brew cask install bartender
brew cask install google-chrome
brew cask install ngrok
brew cask install sketch
brew cask install spectacle
brew cask install tower
brew cask install cocoarestclient
brew cask install iterm2-beta
brew cask install padbury-clock
brew cask install skype
brew cask install spotify
brew cask install daisydisk
brew cask install mounty
brew cask install sabnzbd
brew cask install slack-beta
brew cask install the-unarchiver
brew cask install visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup