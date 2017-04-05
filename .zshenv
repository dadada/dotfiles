typeset -U path
export SVN_EDITOR="/usr/bin/emacsclient -c -n"
export EDITOR="/usr/bin/emacsclient -c -n"
export OPTIMUS_PREFIX="/usr/bin/primusrun"
export GOPATH="$HOME/.gocode"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
path=(~/.gocode/bin ~/.cabal/bin ~/bin ~/projects/omnetpp-5.1/bin $path)
