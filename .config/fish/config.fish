# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

set -x PAGER vimpager

# Theme
set fish_theme agnoster

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme vundle

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/.config/fish/custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
