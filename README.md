## Installation

### Clone

```bash
git clone git@github.com:koenoe/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

### Homebrew

Install [Homebrew](https://brew.sh/), then run:

```bash
brew bundle install --file=~/dotfiles/Brewfile
```

Or use the legacy script:

```bash
./brew.sh
```

### Zsh

Symlinks .zshrc and installs fonts (zinit + plugins auto-install on first shell):

```bash
./zsh/setup.sh
```

### mise (version manager)

mise replaces fnm, rbenv, pyenv, etc. After installing via Brewfile:

```bash
mise install node@lts
mise install ruby@latest
mise use --global node@lts
```

mise auto-detects `.node-version`, `.nvmrc`, `.ruby-version`, `.python-version`, and `.tool-versions` files.

### Secrets

Create `~/.secrets` for sensitive environment variables (not tracked by git):

```bash
export CONTEXT7_API_KEY="your-key"
export NPM_TOKEN="your-token"
export GITHUB_PERSONAL_ACCESS_TOKEN="your-token"
```

### macOS defaults

```bash
./.macos
```

### Ghostty

```bash
./terminal/ghostty/setup.sh
```

### OpenCode

```bash
./opencode/setup.sh
```
