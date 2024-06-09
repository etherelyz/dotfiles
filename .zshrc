###################
##    history    ##
###################

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=1000000
SAVEHIST=1000000


####################
##     options    ##
####################

setopt AUTO_PUSHD
setopt AUTO_NAME_DIRS
setopt COMPLETE_ALIASES
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS


#################
##    alias    ##
#################

alias path='echo $PATH | tr ":" "\n" | grep -vE "^/mnt"'  # omit windows env path


####################
##    homebrew    ##
####################

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


#######################
##    zsh plugins    ##
#######################

# powerlevel10k
source $HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ -f "$XDG_CONFIG_HOME/zsh/p10k.zsh" ]] && source "$XDG_CONFIG_HOME/zsh/p10k.zsh"

# zsh-syntax-highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
