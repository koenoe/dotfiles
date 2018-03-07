#!/usr/bin/env bash

rm -rf ~/.rbenv/plugins && ln -fs ~/dotfiles/rbenv/plugins ~/.rbenv/plugins
ln -fs ~/dotfiles/rbenv/default-gems ~/.rbenv/default-gems

LATEST_RUBY_VERSION="$(rbenv install -l | grep -v - | tail -1 | tr -d '[[:space:]]')"

rbenv install $LATEST_RUBY_VERSION
rbenv global $LATEST_RUBY_VERSION
