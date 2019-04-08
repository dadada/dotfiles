HISTSIZE=100000
SAVEHIST=100000
HISTFILE=${HOME}/.zsh_history
TERM="xterm-256color"
EDITOR="emacsclient -c"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias man='nocorrect man'
alias mv='nocorrect mv -i'
alias cp='nocorrect cp -i'
alias sqlite3='nocorrect sqlite3'
alias sqlite='nocorrect sqlite'
alias mkdir='nocorrect mkdir'
alias gist='nocorrect gist'
alias sudo='nocorrect sudo'
alias killall='nocorrect killall'
alias em='emacsclient -nc'
alias open='xdg-open'
alias gc='git commit'
alias ga='git add -p'
alias gl='git log'
alias gs='git status'
alias gp='git push'
alias ls='exa -l'

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/tim/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
#prompt restore
