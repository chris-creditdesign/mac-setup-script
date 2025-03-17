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

Create `~/.zshrc` file

```
# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

# Start pyenv before running zscaler script to enuser correct version of python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source ~/Repos/springernature/sn-zsh-extensions/springernature.plugin.zsh

# Add Sublime Text 'subl' to PATH
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# JAVA for running Oscar locally
export JAVA_HOME=$(/usr/libexec/java_home)

```

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

Add the following, to prevent delay when pressing escape in neovim:

```
set -sg escape-time 0
```

## Neovim

Instal with: 

```
brew install neovim
```

Copy neovim config from `nvim` to `~/.config/nvim`. 

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

Add vault and zscaler to `.zshrc` file:

```bash
# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

# Start pyenv before running zscaler script to enuser correct version of python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Check if Python 3.13.3 is installed and set it as the global version if present
if pyenv versions | grep -q "3.13.3"; then
    pyenv global 3.13.3
else
    echo "Python 3.13.3 is not installed. You can install it using:"
    echo "pyenv install 3.13.3"
fi

source ~/Repos/springernature/sn-zsh-extensions/springernature.plugin.zsh

# Add Sublime Text 'subl' to PATH
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

Add the following to the `.zprofile` file:

```bash
eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

## Github

1. [Checking for existing SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)
2. [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
3. [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)


