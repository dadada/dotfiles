" general
set nocompatible
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg " lower priority suffixes
set autochdir
"set runtimepath^=~/.vim/bundle/ctrlp
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/tagbar
set runtimepath^=~/.vim/bundle/neomake
set runtimepath^=~/.vim/bundle/vim-gitgutter
"set runtimepath^=~/.vim/bundle/vim-clang
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/undotree
set runtimepath^=~/.vim/bundle/vim-fugitive
set updatetime=250
set mouse=a

" file format
filetype indent on
set encoding=utf-8
setglobal fileencoding=utf-8
set backupdir=~/.vim-backup
set directory=~/.vim-backup
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType java setlocal shiftwidth=4 tabstop=4 expandtab

" editing
imap jj <Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set backspace=indent,eol,start
filetype plugin indent on
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType c set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
au FileType tex set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType sh set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set modelines=0
set nomodeline

" neomake
autocmd! BufWritePost * Neomake

" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" tagbar
nmap <F8> :TagbarToggle<CR>

" undotree
nnoremap <F5> :UndotreeToggle<cr>

" theming
syntax on
set t_Co=256
set background=dark
set number
set relativenumber
set ruler
set incsearch
set hlsearch
