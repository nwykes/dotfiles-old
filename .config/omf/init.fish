
source ~/.config/omf/git_alias.fish

set -g GOPATH ~/go

set -g theme_color_scheme gruvbox
set -g theme_display_user ssh
set -g theme_display_hostname ssh

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


