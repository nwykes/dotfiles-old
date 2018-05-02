#!/usr/bin/env fish

function rsync-it
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.fish" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
end

if not type -qf git
  echo >&2 "You need to install git - visit http://git-scm.com/downloads"
  exit 1
end

if not type -qf grc
  echo >&2 "Please install grc"
end

if not type -q ~/go/bin/powerline-go
  echo "powerline-go not installed. installing..."
  go get -u github.com/justjanne/powerline-go
end

echo "Updating from git"
git pull; and echo "Updating submodules"; and git submodule update --init --remote --recursive; and echo "Done"

if count $argv > /dev/null
  echo "test"
  if test $argv[1] = "-f"
    echo "force"
    rsync-it
  end
else
  echo "This may overwrite existing files in your home directory. Are you sure? (y/n) "
  head -n 1 | read answer
  switch $answer
    case y\* Y\*
      echo "do it"
      rsync-it
      . ~/.config/fish/config.fish
#      vundle-update
    case \*
      exit
  end
end
