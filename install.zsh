#!/usr/bin/env zsh

set -eu # -e: exit immediately if a command exits with a non-zero status, -u: treat unset variables as an error when substituting

DOTFILES_DIR=$(dirname "$0")
CONFIG_DIR="$DOTFILES_DIR/config"

# set environment variables/xdg paths
source "$DOTFILES_DIR/zsh/.zshenv"

#-----------------------------------------#
#     create .zshenv symlink to $HOME     #
#-----------------------------------------#

rm -rf "$HOME/.zshenv"
ln -s "$ZDOTDIR/.zshenv" "$HOME/.zshenv"
echo "Created .zshenv symlink to home ✅"

#---------------------#
#     set up brew     #
#---------------------#

# install homebrew
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Successfully installed homebrew ✅"
else
    echo "Homebrew detected, skip installation ✅"
fi
# activate brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# brew recommends installing gcc if on linux
brew install gcc

#--------------------------------------#
#     install packages in Brewfile     #
#--------------------------------------#

brew bundle --file "$DOTFILES_DIR/Brewfile"
echo "Finished installing packages in Brewfile ✅"

#---------------------------------------#
#     generate private config files     #
#---------------------------------------#

# git private config
[ ! -f "$CONFIG_DIR/git/config.private" ] && cp "$CONFIG_DIR/git/config.private.template" "$CONFIG_DIR/git/config.private"

#----------------------#
#     stow configs     #
#----------------------#

[ ! -d "$XDG_CONFIG_HOME" ] && mkdir -p "$XDG_CONFIG_HOME"
stow --dir="$CONFIG_DIR" --target="$XDG_CONFIG_HOME" . --no-folding

echo "Installation Done ✅✅✅"
echo "Restart zsh to make sure things work properly."
echo "Don't forget to edit private config files (see in README.md) 📝📝📝"
