set TERM xterm-256color
set EDITOR "emacsclient -nc"
set PATH $PATH $HOME/usr/msp430/bin $HOME/.local/bin $HOME/usr/bin $HOME/.gem/ruby/2.4.0/bin
set LD_LIBRARY_PATH $LD_LIBRARY_PATH $HOME/usr/lib
set CPATH $CPATH $HOME/usr/include
#set XKB_DEFAULT_LAYOUT us
#set XKB_DEFAULT_VARIANT altgr-intl
#set XKB_DEFAULT_MODEL pc105

# fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints 'yes'

# disable path shortening
set fish_prompt_pwd_dir_length 0
 
function fish_prompt
  set last_status $status
  printf '%s %s:%s ' \
  (set_color red
    echo $last_status) \
  (set_color green
    hostname) \
  (set_color blue
    prompt_pwd)
  set_color normal
end

function fish_right_prompt
  printf '%s' (__fish_git_prompt)
end

function fish_greeting
end
