#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

ln -fs ~/dotfiles/nvm/default-packages ~/.nvm/default-packages

nvm install --lts
nvm alias default lts/*
