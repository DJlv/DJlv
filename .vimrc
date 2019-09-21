set nu
set foldmethod=indent
set encoding=UTF-8
syntax on
set ruler
set showcmd
set cmdheight=1
set cursorline
set autoindent
set laststatus=1
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
let g:mkdp_path_to_chrome = ""
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0    
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0

Plug 'scrooloose/nerdtree'

Plug 'chxuan/cpp-mode'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'sirver/ultisnips'

Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
call plug#end()



autocmd VimEnter * NERDTree
