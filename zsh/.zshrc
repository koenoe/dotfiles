# ===== Environment =====
export ANDROID_HOME="$HOME/Library/Android/sdk"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"
export PNPM_HOME="$HOME/Library/pnpm"

# ===== PATH (unified, unique entries only) =====
typeset -U path
path=(
  $HOME/dotfiles/bin
  /opt/homebrew/bin
  /opt/homebrew/sbin
  /opt/homebrew/opt/openjdk@17/bin
  $HOME/.npm-global/bin
  $HOME/Library/Android/sdk/platform-tools
  $PNPM_HOME
  /usr/local/bin
  /usr/local/sbin
  /sbin
  $path
)

# ===== Secrets =====
[[ -f ~/.secrets ]] && source ~/.secrets

export GITHUB_NPM_TOKEN=$NPM_TOKEN
export NPM_AUTH_TOKEN=$NPM_TOKEN

# ===== History (generous limits - disk is cheap) =====
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# ===== Zinit =====
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Auto-install zinit if not present
if [[ ! -d "$ZINIT_HOME" ]]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# ===== Plugins =====

# Oh-my-zsh libs (lightweight, just the useful bits)
zinit snippet OMZL::git.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::theme-and-appearance.zsh

# Oh-my-zsh plugins
zinit snippet OMZP::git
zinit snippet OMZP::git-extras
zinit snippet OMZP::aws

# Third-party plugins (turbo mode - deferred loading for speed)
zinit light-mode wait lucid for \
  atinit"zicompinit; zicdreplay" \
    zsh-users/zsh-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# Spaceship prompt
zinit light spaceship-prompt/spaceship-prompt

# ===== Custom =====
ZSH_CUSTOM=$HOME/dotfiles/zsh/custom

source $ZSH_CUSTOM/spaceship.zsh
source $ZSH_CUSTOM/aliases.zsh
source $ZSH_CUSTOM/functions.zsh

# ===== Tools =====

# mise (universal version manager - replaces fnm, rbenv, pyenv, etc.)
eval "$(mise activate zsh)"

# zoxide (smarter cd)
eval "$(zoxide init zsh)"
