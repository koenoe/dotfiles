#!/usr/bin/env bash
mkdir -p ~/.config/opencode
ln -fs ~/dotfiles/opencode/opencode.json ~/.config/opencode/opencode.json
ln -fs ~/dotfiles/opencode/oh-my-opencode.json ~/.config/opencode/oh-my-opencode.json

npx -y add-skill vercel-labs/agent-skills --skill vercel-react-best-practices --global --yes
npx -y add-skill expo/skills --skill building-ui api-routes data-fetching dev-client tailwind-setup use-dom --global --yes
