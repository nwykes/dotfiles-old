# dotfiles

My personal dotfiles for the [fish shell](https://github.com/fish-shell/fish-shell/).

Uses rsync to copy dotfiles from repo location to home directory.

## Installation
Fork this and customize it to make it your own.  Don't use blindly, as it will blow away your current dotfiles.

git, [fish-shell](https://github.com/fish-shell/fish-shell/) and [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) need to be installed.

Clone the repository and put it anywhere you'd like.  I keep mine in ~/src/dotfiles.  

`git clone https://github.com/nwykes/dotfiles.git`

cd to dotfiles directory and run the bootstrap script:

`./bootstrap.fish`

## Update

cd to dotfiles directory and run the bootstrap script.  It will pull the latest version, update the submodules and rsync the updated files to the home directory.

`./bootstrap.fish`

## ToDo
* install oh-my-fish if missing
* more testing on linux

## License
Unless otherwise bundled with a separate license, all files are released under the MIT license. See [LICENSE](LICENSE) for details.

## Thanks to
* [Mathias Bynens](https://github.com/mathiasbynens) for his [dotfiles](https://github.com/mathiasbynens/dotfiles) and bootstrap.sh which was the basis for my bootstrap.fish
