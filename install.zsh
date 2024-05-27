#!/usr/bin/env zsh

set -e

export ZDOTDIR=$HOME/.dotfiles

# XDG path
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"


# install homebrew
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Successfully installed homebrew ✅"
else
    echo "Homebrew detected, skip installation ✅"
fi

# install gcc for homebrew
brew install gcc

# install from Brewfile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --file "$ZDOTDIR/Brewfile"
echo "Finished installing packages from Brewfile ✅"

# create .zshenv symlink
rm -rf "$HOME/.zshenv"
ln -s "$ZDOTDIR/.zshenv" "$HOME/.zshenv"
echo "Created .zshenv symlink to home ✅"


###############################
##    XDG compliant files    ##
###############################

# history file
[ ! -d "$XDG_STATE_HOME/zsh" ] && mkdir -p "$XDG_STATE_HOME/zsh"

# store .zcompdump from compinit
[ ! -d "$XDG_CACHE_HOME/zsh" ] && mkdir -p "$XDG_CACHE_HOME/zsh"

# symlink .p10k.zsh config
mkdir -p "$XDG_CONFIG_HOME/zsh"
rm -rf "$XDG_CONFIG_HOME/zsh/p10k.zsh"
ln -s "$ZDOTDIR/config/p10k.zsh" "$XDG_CONFIG_HOME/zsh/p10k.zsh"

# gitconfig
mkdir -p "$XDG_CONFIG_HOME/git"
[ ! -f "$ZDOTDIR/config/gitconfig.personal" ] && cp "$ZDOTDIR/config/gitconfig.personal.template" "$ZDOTDIR/config/gitconfig.personal"
rm -rf "$XDG_CONFIG_HOME/git/config"
rm -rf "$XDG_CONFIG_HOME/git/gitconfig.personal"
ln -s "$ZDOTDIR/config/gitconfig" "$XDG_CONFIG_HOME/git/config"
ln -s "$ZDOTDIR/config/gitconfig.personal" "$XDG_CONFIG_HOME/git/gitconfig.personal"

echo "Set up XDG compliant files ✅"

echo ""
echo "✅✅✅ --------------- All Done! --------------- ✅✅✅"
echo ""
echo "Restart zsh to make sure things work properly."
echo "📝 Check README.md for things to do after installation."
