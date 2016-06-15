" general
set nocompatible
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg " lower priority suffixes
set autochdir
set runtimepath^=~/.vim/bundle/ctrlp.vim,~/.vim/bundle/airline.vim,~/.vim/bundle/tagbar.vim,~/.vim/bundle/syntastic.vim,~/.vim/bundle/gitgutter.vim,~/.vim/bundle/virtualenv.vim
set updatetime=250

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
set laststatus=2

" tagbar
nmap <F8> :TagbarToggle<CR>

" theming
syntax on
set background=light
set number
set relativenumber
set colorcolumn=80
set ruler
set incsearch
set hlsearch
