
source ~/.config/omf/git_alias.fish

set -g GOPATH ~/go

set -g theme_color_scheme gruvbox

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

if begin; test -n "$SSH_CLIENT"; or test -n "$SSH_TTY"; end
        set -g theme_display_user yes
end

