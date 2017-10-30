TERM="xterm-256color"
path=(~/.gem/ruby/2.4.0/bin ~/usr/bin $path)
LD_LIBRARY_PATH=(~/usr/lib $LD_LIBRARY_PATH)
#C_INCLUDE_PATH=(~/usr/include $C_INCLUDE_PATH)
#CPLUS_INCLUDE_PATH=(~/usr/include $C_INCLUDE_PATH)
CPATH=(~/usr/include $CPATH)

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
