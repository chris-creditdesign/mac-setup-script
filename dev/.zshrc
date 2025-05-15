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

