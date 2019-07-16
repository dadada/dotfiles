# fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints 'yes'

# disable path shortening
set fish_prompt_pwd_dir_length 0

set -U FZF_LEGACY_KEYBINDINGS 0
#set -U FZF_COMPLETE 2

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
	printf '%s' (__fish_maildir_prompt)
end

function fish_greeting
end

alias gs "git status"
alias gc "git commit"
alias ga "git add -p"
alias gl "git log"
alias ls "exa -l"
alias feeds 'picofeed ~/.config/feeds/feeds'
alias mv "mv -i"
alias cp "cp -i"
alias ssh "env TERM=xterm ssh"

#if status is-interactive 
#and not set -q TMUX
#	exec tmux
#end

set -x GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

if status is-login
	for var in (systemctl --user show-environment)
		export $var
	end
end
