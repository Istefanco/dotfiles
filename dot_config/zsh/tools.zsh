# mise-en-place https://mise.jdx.dev/
eval "$($HOME/.local/bin/mise activate zsh)"

# 1Password
source ${XDG_CONFIG_HOME:-$HOME/.config}/op/plugins.sh
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
