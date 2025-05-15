
eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by `rbenv init` on Fri 24 Jan 2025 15:16:04 GMT
# eval "$(rbenv init - --no-rehash zsh)"

# Auto create three tmux sessions for oscar, trump-widget, and ai-widget
if command -v tmux >/dev/null 2>&1; then
  # Skip if we're already inside tmux
  if [[ -z "$TMUX" ]]; then

    # ------------------------------------------------------------------
    # 1. Define your sessions:  session_name:working_directory
    # ------------------------------------------------------------------
    sessions=(
      "oscar:~/nature-repos/oscar-magazine-enhanced-content"
      "trump-widget:~/nature-repos/oscar-magazine-enhanced-content/src/interactive/2025/trump-widget"
      "ai-widget:~/nature-repos/oscar-magazine-enhanced-content/src/interactive/2025/ai-widget"
    )

    # ------------------------------------------------------------------
    # 2. Create each one if it doesn’t exist yet
    # ------------------------------------------------------------------
    for entry in "${sessions[@]}"; do
      name="${entry%%:*}"
      dir="${entry#*:}"
      dir=${dir/#\~/$HOME}        # expand the ~
      if ! tmux has-session -t "$name" 2>/dev/null; then
        tmux new-session -d -s "$name" -c "$dir"
      fi
    done
  fi
fi
