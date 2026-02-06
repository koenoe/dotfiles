#!/usr/bin/env bash
mkdir -p ~/.config/opencode
ln -fs ~/dotfiles/opencode/opencode.json ~/.config/opencode/opencode.json
ln -fs ~/dotfiles/opencode/oh-my-opencode.json ~/.config/opencode/oh-my-opencode.json

npx -y skills add vercel-labs/agent-skills --skill vercel-react-best-practices vercel-react-native-skills vercel-composition-patterns --global --yes