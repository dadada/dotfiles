typeset -U path
export SVN_EDITOR=/usr/bin/emacsclient -c
export EDITOR=/usr/bin/emacsclient -c
export OPTIMUS_PREFIX="/usr/bin/primusrun"
export GOPATH="$HOME/.gocode"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
path=(~/.gocode/bin ~/.cabal/bin ~/bin $path)
