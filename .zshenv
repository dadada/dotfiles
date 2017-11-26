TERM="xterm-256color"
PATH="$PATH:$HOME/usr/msp430/bin:$HOME/.local/bin:$HOME/usr/bin:$HOME/.gem/ruby/2.4.0/bin"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/usr/lib"
CPATH="$CPATH:$HOME/usr/include"
EDITOR="emacsclient -nc"

#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent > ~/.ssh-agent-thing
#fi
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#    eval "$(<~/.ssh-agent-thing)"
#fi
