#!/usr/bin/env fish
function has
  type $argv[1] > /dev/null 2>&1
  return $status
end

function rsync-it
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.fish" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
end

if not has git
	echo >&2 "You need to install git - visit http://git-scm.com/downloads"
	exit 1
end

if not has omf
  echo >&2 "You need to install oh-my-fish"
  exit 1
end

echo "Updating from git"
git pull; and echo "Updating submodules"; and git submodule update --init --remote --recursive; and echo "Done"

if set -q argv
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
      rsync-it
      . ~/.config/fish/config.fish
      vundle-update
    case \*
      exit
  end
end
