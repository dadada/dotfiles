case $TERM in
    termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
        preexec () { print -Pn "\e]0;$1\a" }
        ;;
    tmux)
        precmd () { 
            print -Pn "\e]83;title \"$1\"\a" 
            print -Pn "\e]0;$TERM - %L $1\a" 
        }
        preexec () { 
            print -Pn "\e]83;title \"$1\"\a" 
            print -Pn "\e]0;$TERM - %L $1\a" 
        }
        ;; 
esac
