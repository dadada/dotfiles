set PATH ~/bin $PATH
set -g fish_key_bindings fish_vi_key_bindings

# some color aliases
set fish_color_user cyan
set fish_color_host blue

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'
 
function fish_prompt
    set last_status $status

    if test $last_status = 0
         set last_status ""
    else
        set last_status [$last_status]
    end

    printf '%s%s%s%s%s%s%s%s%s%s➔ '\
    (set_color $fish_color_status)\
    (echo $last_status)\
    (set_color $fish_color_user)\
    (whoami)\
    (set_color $fish_color_host)\
    (hostname)\
    (set_color $fish_color_cwd)\
    (prompt_pwd)\
    (set_color normal)\
    (__fish_git_prompt)
end

function fish_greeting
    logo
end
