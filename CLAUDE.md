Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/). 
Docs: https://www.chezmoi.io/reference/

Files here track files located on other parts of the system
Example: dot_gitconfig tracks the ~/.gitconfig on the machine

## Commands

```bash
chezmoi diff            # Preview changes before applying
chezmoi apply           # Apply source state to home directory
chezmoi apply -v        # Apply with verbose output
chezmoi add ~/.foo      # Add a file to source state
chezmoi data            # Show template data (hostname, OS, username)
chezmoi managed         # List all managed files
```
