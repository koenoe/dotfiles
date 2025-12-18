## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/dotfiles`).

```bash
git clone --recurse-submodules -j8 git@github.com:koenoe/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](https://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```

### Install fonts

Install some Powerline fonts for iTerm and VScode
```bash
./fonts/install.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Oh My Zsh configuration

Use my [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) configuration (after installing Oh My Zsh, of course)

```bash
./zsh/setup.sh
```

### OpenCode configuration

Install [OpenCode](https://opencode.ai) configuration with [oh-my-opencode](https://github.com/code-yeongyu/oh-my-opencode) plugin:

```bash
./opencode/setup.sh
```
