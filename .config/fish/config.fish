# fish git prompt
set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints 'yes'

# disable path shortening
set fish_prompt_pwd_dir_length 0

set -x GPG_TTY (tty)
set -x EDITOR vim
set -x PAGER less
set -x MAILDIR $HOME/.var/mail
#set -x PATH $HOME/bin:$HOME/.local/bin:$HOME/.gem/ruby/2.4.0/bin:$HOME/.cargo/bin:$PATH
set -x PATH $HOME/bin:$HOME/.local/bin:$PATH
set -x SSH_AUTH_SOCK /run/user/1000/gnupg/S.gpg-agent.ssh
set -x RUST_SRC_PATH $HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
set -x MBLAZE $HOME/.config/mblaze
set -x NOTMUCH_CONFIG $HOME/.config/notmuch/config
set -x PASSWORD_STORE_DIR $HOME/src/password-store
#set -x DISPLAY ":0"
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_COMPLETE 2

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

#if status is-login
#		if test -z "$DISPLAY" -a $XDG_VTNR = 1
#				/usr/bin/systemctl --user import-environment
#		end
#end

systemctl --user import-environment

