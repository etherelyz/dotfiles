typeset -U PATH path

# zsh dir
export ZDOTDIR=$HOME/.dotfiles/zsh

# XDG paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# fix XDG non-compliant paths
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet

# configs
export GOOS=windows
