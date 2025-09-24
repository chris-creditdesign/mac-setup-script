# mac-setup-script

Personalised script to install required software and set preferences when setting up a new mac.

## Software:

- Homebrew
- iterm
- Visual studio code
- Neovim
- Sublime Text
- Adobe creative cloud
- Xcode developer tools
- Install Node via [NVM](https://github.com/nvm-sh/nvm)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

```bash
nvm install node # "node" is an alias for the latest version
```

## ZSH

Copy `dev/.zshrc` and `dev.zprofile` files to home directory `~`.
 
Zprofile contains instructions to create tmux sessions for oscar, trump-widget and ai-widget.

## Homebrew

Install Homebrew with:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Run this command in your terminal to add Homebrew to your PATH:

```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Tmux

Install: 

```
brew install tmux
```

Create a config file `~/.tmux.conf`.

Add the following, to prevent delay when pressing escape in neovim and to enable squiggly line support:

```
# Make sure tmux doesn't add delays to escape key for vim
set -sg escape-time 0

# Set color scheme for squiggly line support
set -g default-terminal "xterm-256color"
```

## Neovim

Install with: 

```
brew install neovim
```

Copy neovim config from `nvim` to `~/.config/nvim`. 

## Lazygit

Install with:

```
brew install lazygit
```

## VSCode

To disable the Apple press and hold for VSCode only, run this command in a terminal:

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

Then restart VSCode.

To re-enable, run this command in a terminal:

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true
```

From [Stack Overflow](https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode).

## Python 

- Install [pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#homebrew-in-macos) to manage python versions


## Command line

- CSVKit

## Sublime Text

Add `subl` command to zshrc file:

  `export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"`

## System

- Python
- Git

## SpringerNature

[Engineering Enablement Getting Started](https://ee.public.springernature.app/rel-eng/getting-started/)

- Halfepipe
- Vault
- Znap - ZSH extension manager
- [Springer Nature ZSH extensions](https://github.com/springernature/sn-zsh-extensions/tree/main)



## Github

1. [Checking for existing SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)
2. [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
3. [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)


