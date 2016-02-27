if &shell =~# 'fish$'
    set shell=sh
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'sjl/gundo.vim'
Plugin 'dag/vim-fish'

call vundle#end()
filetype plugin indent on

set encoding=utf-8
setglobal fileencoding=utf-8
set hidden
set backupdir=~/.vim-backup
set directory=~/.vim-backup

" editing
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
imap jj <Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
au FileType make set noexpandtab
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 expandtab
au FileType go set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 noexpandtab
au FileType c set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 expandtab
au FileType cpp set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 expandtab
au FileType fish set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 expandtab
au FileType fish compiler fish
au BufNewFile,BufRead *.json set ft=javascript

" theming
syntax enable
set background=light
if has("gui_running")
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif

nnoremap <F5> :GundoToggle<CR>
set number
"set list listchars=trail:·
set ruler
set incsearch
set hlsearch
autocmd FileType python setlocal completeopt-=preview
