set nobackup
set noswapfile
set mouse=a
set laststatus=2
set cindent
set autoindent
set smartindent
set smartindent
set nu
syntax on
set splitbelow
map jj :ter<CR>
"**************************************
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  "触发时才加载


"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.git']

"markdown*****************************************************************************

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
let g:mkdp_path_to_chrome = ""
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_refresh_slow = 0


Plug 'mzlogin/vim-markdown-toc'
"在当前光标后生成目录
":GenTocMarked
"更新目录
":UpdateToc
"取消储存时自动更新目录
let g:vmt_auto_update_on_save = 0
function RToc()
 exe "/-toc .* -->"
  let lstart=line('.')
   exe "/-toc -->"
    let lnum=line('.')
    execute lstart.",".lnum."g/           /d"
endfunction

" 安装插件
" 打开/关闭预览
":MarkdownPreviewToggel
" 指定浏览器路径
" 指定预览主题，默认Github
 let g:mkdp_auto_start = 1
let g:mkdp_path_to_chrome = ""
"****************************************************************************************

" taglist

let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  


map <silent><F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>

Plug 'jiangmiao/auto-pairs'
Plug 'yianwillis/vimcdoc'

call plug#end()


map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    endif
endfunc

set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

set tags=~/tags
nmap <silent> <F9> <Plug>MarkdownPreview 
imap <silent> <F9> <Plug>MarkdownPreview

