filetype plugin indent on

set encoding=utf-8
setglobal fileencoding=utf-8
set hidden
set backupdir=~/.vim-backup
set directory=~/.vim-backup

" editing
imap jj <Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
au FileType make set noexpandtab
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79 expandtab
au FileType fish compiler fish
au BufNewFile,BufRead *.json set ft=javascript

" theming
syntax off
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
