# Shell Functions
# ================
# Loaded via sheldon's "local-config" plugin (deferred).
# This file is sourced asynchronously after the prompt appears.
# Utility functions that are invoked manually, not at startup.

# Regenerate local zsh completions for tools not covered by Homebrew or
# zsh-completions. Run this after installing or updating these tools.
# Work-specific tools (pipelinectl, lotus) are handled in work.zsh.
regen-completions() {
  local dir=~/.config/zsh/completions
  mkdir -p "$dir"

  docker completion zsh > "$dir/_docker"
  kubectl completion zsh > "$dir/_kubectl"
  helm completion zsh > "$dir/_helm"
  mise completion zsh > "$dir/_mise"

  rm -f ~/.zcompdump
  echo "Completions regenerated. Open a new shell to pick them up."
}
