set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
setglobal fileencoding=utf-8
set hidden
set backupdir=~/.vim-backup
set directory=~/.vim-backup

" editing
set autochdir
set autoindent
set relativenumber
set number
imap jj <Esc>
set tabstop=8
set softtabstop=4
set shiftround 
set shiftwidth=4
set expandtab

" theming
set background=dark
syntax on
colorscheme solarized
set laststatus=2
