# Zsh Aliases
# ============
# Loaded via sheldon's "local-config" plugin (deferred).
# This file is sourced asynchronously after the prompt appears.
# These aliases won't be available for the first ~100ms of shell startup,
# which is fine since you can't type a command that fast anyway.

# eza — a modern ls replacement (https://eza.rocks)
alias ls='eza --icons'
alias ll='eza -la --icons --git'
alias la='eza -a --icons'
alias tree='eza --tree --icons --git-ignore'

# bat — a cat replacement with syntax highlighting (https://github.com/sharkdp/bat)
alias cat='bat'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Safer defaults
alias mkdir='mkdir -p'

alias c='clear'
