" general
set nocompatible
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg " lower priority suffixes
"set autochdir
set runtimepath^=~/.vim/bundle/ctrlp.vim,~/.vim/bundle/airline.vim,~/.vim/bundle/tagbar.vim,~/.vim/bundle/syntastic.vim,~/.vim/bundle/gitgutter.vim,~/.vim/bundle/virtualenv.vim,~/.vim/bundle/clang_complete,~/.vim/bundle/vim-airline-themes,~/.vim/bundle/papercolor-theme.vim,~/.vim/bundle/undotree,~/.vim/bundle/vim-fugitive,~/.vim/bundle/delimitMate
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

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
