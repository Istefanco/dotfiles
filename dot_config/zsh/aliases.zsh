# Zsh Aliases
# ============
# Loaded via sheldon's "local-config" plugin (deferred).
# This file is sourced asynchronously after the prompt appears.
# These aliases won't be available for the first ~100ms of shell startup,
# which is fine since you can't type a command that fast anyway.

# eza — a modern ls replacement (https://eza.rocks)
alias ls='eza --icons=auto --group-directories-first'
alias ll='eza -la --icons=auto --header --git --group-directories-first'
alias la='eza -a --icons=auto --group-directories-first'
alias tree='eza --tree --icons=auto --git-ignore --group-directories-first'

# bat — a cat replacement with syntax highlighting (https://github.com/sharkdp/bat)
alias cat='bat'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'

# Safer defaults
alias mkdir='mkdir -p'

alias c='clear'
