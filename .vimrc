set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'kien/ctrlp.vim'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set hidden
set backupdir=~/.vim-backup
set directory=~/.vim-backup
set runtimepath^=~/.vim/bundle/ctrlp.vim


" editing
set wildmenu
set showcmd
set relativenumber
set number
set autoindent
set visualbell
ino <Esc> <c-o> <c-l>
ino jj <Esc>

" theming
set t_Co=256
syntax enable
set background=dark
colorscheme solarized
