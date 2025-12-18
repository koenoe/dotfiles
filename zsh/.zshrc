export WEBOS_CLI_TV="/opt/webOS_TV_SDK/CLI/bin"

export PATH="$WEBOS_CLI_TV:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PNPM_HOME="$HOME/Library/pnpm"

[[ -f ~/.secrets ]] && source ~/.secrets

export GITHUB_NPM_TOKEN=$NPM_TOKEN
export NPM_AUTH_TOKEN=$NPM_TOKEN

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS

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
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::theme-and-appearance.zsh

# Oh-my-zsh plugins
zinit snippet OMZP::git
zinit snippet OMZP::git-extras
zinit snippet OMZP::aws
zinit snippet OMZP::z

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
eval "$(fnm env)"
eval "$(rbenv init - --no-rehash zsh)"

# pnpm
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
