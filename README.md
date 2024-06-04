# mac-setup-script

Personalised script to install required software and set preferences when setting up a new mac.

# Software:

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

## Python 

- Install [pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#homebrew-in-macos) to manage python versions

### [Set up your shell environment for Pyenv](Set up your shell environment for Pyenv)

```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```

Apply the changes to your current shell session:

```
source ~/.zshrc
```

Install the latest version of python:

```
pyenv install 3.12.3  # Replace with the actual LTS version if different
```

Set the newly installed version as the global default:

```
pyenv global 3.12.3
```

Verify the installation

```
python --version
```

## Command line

- CSVKit

Add `subl` command to zshrc file:

  `export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"`

## System

- Python
- Git

## SpringerNature

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

source ~/Repos/springernature/sn-zsh-extensions/vault.zsh
source ~/Repos/springernature/sn-zsh-extensions/zscaler.zsh

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

The Homebrew Prefix seems to be different for intel macs vs arm macs.

The homebrew prefix can be found with 

```
brew config | grep HOMEBREW_PREFIX
```

```
ARM_HOMEBREW_PREFIX="/opt/homebrew"
INTEL_HOMEBREW_PREFIX="/usr/local"
```

This causes an error when the `_sn_setup_zscaler_openssl` tries to save the `.pem` file in the Arm location.
This should be fixed when the I recieve a new laptop.
