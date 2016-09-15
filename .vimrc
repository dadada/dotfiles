" general
set nocompatible
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg " lower priority suffixes
set autochdir
set runtimepath^=~/.vim/bundle/ctrlp
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/tagbar
set runtimepath^=~/.vim/bundle/neomake
set runtimepath^=~/.vim/bundle/vim-gitgutter
set runtimepath^=~/.vim/bundle/vim-clang
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/papercolor-theme
set runtimepath^=~/.vim/bundle/undotree
set runtimepath^=~/.vim/bundle/vim-fugitive
set updatetime=250
set mouse=a

" file format
set encoding=utf-8
setglobal fileencoding=utf-8
set backupdir=~/.vim-backup
set directory=~/.vim-backup

" editing
imap jj <Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set backspace=indent,eol,start
filetype plugin indent on
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
au FileType c set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

" neomake
autocmd! BufWritePost * Neomake

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'
set laststatus=2

" tagbar
nmap <F8> :TagbarToggle<CR>

" undotree
nnoremap <F5> :UndotreeToggle<cr>

" theming
syntax on
set t_Co=256
set background=light
colorscheme PaperColor
set number
set relativenumber
set colorcolumn=80
set ruler
set incsearch
set hlsearch
