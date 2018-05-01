" general
set nocompatible
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg " lower priority suffixes
set autochdir
set updatetime=250
set mouse=a

" file format
filetype indent on
set encoding=utf-8
setglobal fileencoding=utf-8
set backupdir=~/.vim/backup
set directory=~/.vim/backup
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab

" editing
imap jj <Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set backspace=indent,eol,start
filetype plugin indent on
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4
au FileType c set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
au FileType tex set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType sh set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set modelines=0
set nomodeline

" theming
syntax enable
set background=dark
set number
set relativenumber
set ruler
set incsearch
set hlsearch
