set nocompatible  "不与 Vi 兼容（采用 Vim 自己的操作命令）
set showmode "在底部显示，当前处于命令模式还是插入模式
set mouse=a "支持使用鼠标
set t_Co=256 "启用256色
filetype indent on
set relativenumber
set wrap
set laststatus=2
set showmatch
set hlsearch
set incsearch
set ignorecase
set spell spelllang=en_us
set visualbell
set noerrorbells
"************************
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"**************************
set nu
set foldmethod=indent
set encoding=UTF-8
syntax on
set ruler
set showcmd  "在底部显示，当前键入的指令
set cmdheight=1
set cursorline
set autoindent
set laststatus=1
set tabstop=4   " 设置制表符(tab键)的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
call plug#begin('~/.vim/plugged')

let g:vimtex_view_method='zathura'

"******************************
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
"*****************************
call plug#end()

map <F5>:call CompileRunGcc()<CR>
func!CompileRunGCC()
	exec"w"
	exec"!gcc % -o %<"
	exec"!./%<"
endfunc
autocmd VimEnter * NERDTree

inoremap jj <esc> " 映射插入模式下的 jj 键为 ESC 键
