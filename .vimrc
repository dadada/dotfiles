set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'Raimondi/delimitMate'
Plugin 'sjl/gundo.vim'
Bundle 'croaky/vim-colors-github'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
setglobal fileencoding=utf-8
"set fileencodings=ucs-bom,utf-8,latin1
set hidden
set backupdir=~/.vim-backup
set directory=~/.vim-backup
set runtimepath^=~/.vim/bundle/ctrlp.vim


" editing
set omnifunc=syntaxcomplete#Complete
set expandtab
set tabstop=4
set shiftwidth=4
set wildmenu
set showcmd
set relativenumber
set number
set autoindent
set visualbell
"ino <Esc> <c-o> <c-l>
ino jj <Esc>
set autochdir

" theming
set t_Co=256
syntax enable
colorscheme github

" gui options
set guioptions-=T
set guioptions-=r
set guioptions-=L
"set guioptions-=m
