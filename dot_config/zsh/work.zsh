# AWS
export AWS_DEFAULT_PROFILE=dev.use1
export AWS_PROFILE=dev.use1
export AWS_SDK_LOAD_CONFIG=true

# Postgres
export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=postgres

# Work PATH entries
path=(
    $HOMEBREW_PREFIX/opt/libpq@16/bin(N)
    $HOME/.rd/bin(N)
    $path
    $HOME/work/infrastructure/bin(N)
)

export FIREFOX_TESTS_PATH=~/work/test-firefox/Firefox.app/Contents/MacOS/firefox-bin
export RUBY_DEBUG_OPEN=true

# Regenerate completions for work-specific tools. These are kept separate from
# regen-completions (in functions.zsh) since they won't exist on non-work machines.
regen-work-completions() {
  local dir=~/.config/zsh/completions
  mkdir -p "$dir"

  lotus completion zsh > "$dir/_lotus"

  # pipelinectl's completion output is designed for eval, not fpath loading.
  # The #compdef header uses $PROG instead of a literal command name, so we
  # patch it to make compinit discover it correctly.
  pipelinectl completion zsh > "$dir/_pipelinectl"
  sed -i '' '1s/.*/\#compdef pipelinectl/' "$dir/_pipelinectl"
  sed -i '' 's/compdef _cli_zsh_autocomplete $PROG/compdef _cli_zsh_autocomplete pipelinectl/' "$dir/_pipelinectl"

  rm -f ~/.zcompdump
  echo "Work completions regenerated. Open a new shell to pick them up."
}

# Work aliases
alias pc="pipelinectl"
alias lo="lotus"
alias testdb="RACK_ENV=test RAILS_ENV=test bundle exec rake -t db:test:load_schema db:seed"
