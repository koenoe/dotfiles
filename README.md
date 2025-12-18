## Installation

### Clone

```bash
git clone git@github.com:koenoe/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

### Homebrew

Install [Homebrew](https://brew.sh/), then run:

```bash
./brew.sh
```

### Zsh

Symlinks .zshrc and installs fonts (zinit + plugins auto-install on first shell):

```bash
./zsh/setup.sh
```

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

### OpenCode

```bash
./opencode/setup.sh
```
