typeset -U PATH path

export ZDOTDIR=$HOME/.dotfiles

# XDG path
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZCACHEDIR="$XDG_CACHE_HOME/zsh"
export ZCOMPDUMP="${ZCACHEDIR}/zcompdump-${ZSH_VERSION}"
zstyle ':completion::complete:*' cache-path "${ZCACHEDIR}/zcompcache"

export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet
export GOPATH="$XDG_DATA_HOME"/go
export PYENV_ROOT="$XDG_DATA_HOME"/pyenv
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
