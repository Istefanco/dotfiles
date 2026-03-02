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

# pipelinectl
eval "$(pipelinectl completion zsh)"

# Work aliases
alias pc="pipelinectl"
alias lo="lotus"
alias testdb="RACK_ENV=test RAILS_ENV=test bundle exec rake -t db:test:load_schema db:seed"
