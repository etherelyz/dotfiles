#-----------------#
#     history     #
#-----------------#

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=1000000
SAVEHIST=1000000

#------------------#
#      options     #
#------------------#

setopt AUTO_PUSHD
setopt AUTO_NAME_DIRS
setopt COMPLETE_ALIASES
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

#---------------#
#     alias     #
#---------------#

# omit windows env path
alias path='echo $PATH | tr ":" "\n" | grep -vE "^/mnt"'

#---------------------------------------#
#     activate brew and zsh plugins     #
#---------------------------------------#

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# activate powerlevel10k
source $HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zsh-syntax-highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh/.p10k.zsh.
[[ -f ~/.dotfiles/zsh/p10k.zsh ]] && source ~/.dotfiles/zsh/p10k.zsh

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
