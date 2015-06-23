# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Base16 Shell
eval sh $HOME/.colors/base16-shell/base16-default.dark.sh

set -x PAGER vimpager

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_custom $HOME/.config/fish/custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'agnoster'
Plugin 'theme'
Plugin 'vundle'
