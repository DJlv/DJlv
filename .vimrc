
set nu
syntax on
set showmatch
set cursorline
set matchtime=2
set hlsearch
set ignorecase
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set langmenu=zh_CN.UTF-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn

set autoindent
filetype indent on
set laststatus=2
set showmatch
set incsearch
set autochdir

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdtree'
autocmd vimenter * NERDTree
Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'
call plug#end()
autocmd VimEnter * NERDTree

inoremap jj <esc> " 映射插入模式下的 jj 键为 ESC 键
