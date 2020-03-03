" VIM BASE IDE SETTING {{{1
" basics {{{2
filetype on
filetype plugin indent on
syntax on
set number
" set relativenumber
set expandtab

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=0
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set incsearch " 开启实时搜索
set ignorecase " 搜索时大小写不敏感
set smartcase
" set nohlsearch "禁止显示搜索高亮
set hlsearch  "高亮搜索的关键字

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Useful settings
set history=700 "设置命令历史行数
set undolevels=700
set wildmenu " vim 自身命令行模式智能补全
set path+=** " find path Recursively

"show
set ruler "打开光标的行列位置显示功能
" set ambiwidth=double "显示中文引号
set cursorline "行高亮
set cursorcolumn "列高亮，与函数列表有冲突
set cmdheight=2 "设置命令行的高度
"set shortmess=atI  "启动的时候不显示那个援助索马里å¿童的提示
"set novisualbell "不要闪烁
set list
set listchars=tab:>-,trail:- "显示TAB健

" autocmd BufWritePost ~/.config/nvim/init.vim source % " 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置变更立即生效
" 让配置变更立即生效
" Automatic reloading of .vimrc
" autocmd! bufwritepost .vimrc source %
if has("autocmd")
        autocmd! bufwritepost vimrc source ~/.vimrc
    endif
nmap <F4> :source ~/.vimrc <CR>

" change spacing for language specific
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
" fold
"设置折叠模式
set foldcolumn=3
"set foldopen=all "光标遇到折叠，折叠就打开
"set foldclose=all "移开折叠时自动关闭折叠
"zf zo zc zd zr zm zR zM zn zi zN
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
" set foldlevel=2
set foldmethod=marker "依标记折叠

"color
let base16colorspace=256  " Access colors present in 256 colorspace
" set term=screen-256color
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
" set term=screen

" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

" indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
" eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
" start：要想删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start

"p keys{{{2
let mapleader = ","
" setfolder kay
map <Leader>ffs <esc>:set foldmethod=syntax<CR>
map <Leader>ffi <esc>:set foldmethod=indent<CR>
map <Leader>ffm <esc>:set foldmethod=marker<CR>


set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$
" 定义快捷键到行首和行尾
nmap <Leader>b 0
nmap <leader>e $
" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" " 设置快捷键遍历子窗口

" 定义快捷键在结对符之间跳转
nmap <Leader>M %
"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

inoremap jk <ESC> :w <ESC>
inoremap JK <ESC> :w <ESC>
inoremap Jk <ESC> :w <ESC>

""F12生成/更新tags文件
"set tags=tags;
"set autochdir
"function! UpdateTagsFile()
"    silent !ctags -R --fields=+ianS --extra=+q
"endfunction
"nmap <F12> :call UpdateTagsFile()<CR>

""Ctrl + F12删除tags文件
"function! DeleteTagsFile()
"    "Linux下的删除方法
"    "silent !rm tags
"    "Windows下的删除方法
"    silent !del /F /Q tags
"endfunction
"nmap <C-F12> :call DeleteTagsFile()<CR>
""退出VIM之前删除tagsæ件
""au VimLeavePre * call DeleteTagsFile() "

"F2处理行尾的空格以及文件尾部的多余空行
"Automatically remove trailing spaces when saving a file.
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
"Remove indenting on empty line
map <F1> :w<CR>:call CleanupBuffer(1)<CR>:noh<CR>
function! CleanupBuffer(keep)
    " Skip binary files
    if (&bin > 0)
        return
    endif
    " Remove spaces and tabs from end of every line, if possible
    silent! %s/\s\+$//ge
    " Save current line number
    let lnum = line(".")
    " number of last line
    let lastline = line("$")
    let n        = lastline
    " while loop
    while (1)
        " content of last line
        let line = getline(n)
        " remove spaces and tab
        if (!empty(line))
            break
        endif
        let n = n - 1
    endwhile
    " Delete all empty lines at the end of file
    let start = n+1+a:keep
    if (start < lastline)
        execute n+1+a:keep . "," . lastline . "d"
    endif
    " after clean spaces and tabs, jump back
    exec "normal " . lnum . "G"
endfunction
" }}}
" self made function {{{ "

" run the file
map <F5> <Esc>:w <CR> :call CompileRunGcc() <CR>:!date <CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o /tmp/a.out"
        exec "!time /tmp/a.out"
    elseif &filetype == 'lua'
        exec "!lua5.1 %"
        exec "!time go run %"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

nnoremap <F6>   <Esc>:w<CR>:!g++ -std=c++11 % -o /tmp/a.out && time /tmp/a.out && date<CR>

map <F8> :call Rungdb()<CR>

func! Rungdb()

    exec "w"

    exec "!g++ % -g -o %<"

    exec "!gdb ./%<"

endfunction
" }}} self made function "
" }}}1

