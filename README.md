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

Use my [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) configuration (after installing Oh My Zsh, of course)

```bash
./zsh/setup.sh
```

### Visual Studio Code settings

Open the application and press `Shift + Alt + D`, use the following Gist ID to import settings and extensions:

```bash
d9dfa4e7c603aac4a84d5ae72c447eb8
```
