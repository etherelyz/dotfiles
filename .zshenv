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
