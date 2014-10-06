#!/bin/sh

if [ -f /usr/bin/zsh -o -f /usr/local/bin/zsh ]; then 

    # chsh -s /usr/bin/zsh

    if [ -d $HOME/.zsh ]; then
        mv $HOME/.zsh $HOME/.zsh.old
    fi

    if [ -f $HOME/.zshrc ]; then
        mv $HOME/.zshrc $HOME/.zshrc.old
    fi

    if [ -f $HOME/.zshenv ]; then
        mv $HOME/.zshenv $HOME/.zshenv.old
    fi

    ln -s $PWD/.zsh $HOME/
    ln -s $PWD/.zshrc $HOME/
    ln -s $PWD/.zshenv $HOME/

else
    echo "Missing ZSH!"
fi

if [ -f /usr/bin/i3 -o -f /usr/local/bin/i3 ]; then

    if [ -d $HOME/.i3 ]; then
        mv $HOME/.i3 $HOME/.i3.old
    fi

    if [ -f $HOME/.i3status.conf ]; then
        mv $HOME/.i3status.conf $HOME/.i3status.conf.old
    fi

    ln -s $PWD/.i3 $HOME/
    ln -s $PWD/.i3status.conf $HOME/

else
    echo "Missing i3!"
fi

if [ -f /usr/bin/zathura -o -f /usr/local/bin/zathura ]; then

    if [ -f $HOME/.config/zathura/zathurarc ]; then
        mv $HOME/.config/zathura/zathurarc $HOME/.config/zathura/zathurarc.old
    fi

    ln -s $PWD/.config/zathura/zathurarc $HOME/.config/zathura/

else
    echo "Missing Zathura!"
fi

if [ -f /usr/bin/vim -o -f /usr/local/bin/vim ]; then

    if [ -f $HOME/.vimrc ]; then
        mv $HOME/.vimrc $HOME/.vimrc.old
    fi

    if [ -d $HOME/.vim ]; then
        mv $HOME/.vim $HOME/.vim.old
    fi

    mkdir -p $HOME/.vim-backup
    git clone 'https://github.com/gmarik/Vundle.vim.git' $HOME/.vim/bundle/Vundle.vim
    ln -s $PWD/.vimrc $HOME/
    echo 'Run "vim -c PluginInstall" to finish'

else
    echo "Missing VIM!"
fi

if [ -f /usr/bin/xmodmap -o -f /usr/local/bin/xmodmap ]; then

    if [ -f $HOME/.Xmodmap ]; then
        mv $HOME/.Xmodmap $HOME/.Xmodmap.old
    fi

    ln -s $PWD/.Xmodmap $HOME/

else
    echo "Missing Xmodmap!"
fi

