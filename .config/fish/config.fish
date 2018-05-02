function fish_prompt
    ~/go/bin/powerline-go -theme ~/.config/powerline-go/default.json -error $status -modules "venv,cwd,perms,git,exit,root" -shell bare
end

source /usr/local/etc/grc.fish
source ~/.config/fish/git_alias.fish

switch (uname)
    case Linux
            function ls
                 set -l executable ls --color=always
                 grc.wrap $executable $argv
            end
    case Darwin
        set -gx CLICOLOR 1
        set -gx CLICOLOR_FORCE 1
end
