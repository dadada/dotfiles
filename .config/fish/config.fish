set PATH ~/bin $PATH
set EDITOR /usr/bin/vim
set -g fish_key_bindings fish_vi_key_bindings

# some color aliases
set fish_color_user cyan
set fish_color_host blue
set fish_color_status red

# fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints 'yes'
 
function fish_prompt
    set last_status $status

    if test $last_status = 0
        set last_status ""
    end

    printf '%s%s%s%s%s%s%s%s%s%s→ '\
    (set_color $fish_color_status)\
    (echo $last_status)\
    (set_color $fish_color_user)\
    (whoami)\
    (set_color $fish_color_host)\
    (hostname)\
    (set_color $fish_color_cwd)\
    (prompt_pwd)\
    (set_color normal)\
    (__fish_git_prompt)\
    #    (__fish_svn_prompt)
end

function fish_greeting
end
