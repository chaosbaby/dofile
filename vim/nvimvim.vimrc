" plug install {{{1
" AUTOLOAD BUNDLE{{{2
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
" call vundle#begin()
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
" VERB {{{2
Plug 'tpope/vim-surround'
Plug  'tpope/vim-commentary'
Plug  'vim-scripts/ReplaceWithRegister'
Plug  'christoomey/vim-titlecase'
Plug  'tpope/vim-repeat'
" NOUN {{{2
" you can add textobj from web (https://github.com/kana/vim-textobj-user/wiki)
Plug  'kana/vim-textobj-user'
" FILESYSTEM {{{2
Plug  'scrooloose/nerdtree'
Plug  'lokaltog/vim-powerline'
Plug  'kien/ctrlp.vim'
Plug  'rking/ag.vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Bundle 'MiniBufferExplorer'
" GIT HELPER {{{2
Plug  'tpope/vim-fugitive'
Plug  'airblade/vim-gitgutter'
Plug  'Xuyuanp/nerdtree-git-plugin'
" SYNTAX & COMPLETION {{{2
Plug  'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug  'zchee/deoplete-jedi'

" Plug  'w0rp/ale'

Plug  'MarcWeber/vim-addon-mw-utils'
Plug  'tomtom/tlib_vim'
Plug  'garbas/vim-snipmate'
Plug  'honza/vim-snippets'

" Plug  'valloric/youcompleteme'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug  'tpope/vim-markdown'
Plug  'SirVer/ultisnips'

" Plug 'ervandew/supertab'
" }}} SYNTAX & COMPLETION "
" FIND USAGE DEFINITION {{{ "
" Plug  'brookhong/cscope.vim'
Plug  'easymotion/vim-easymotion'
" }}} FIND USAGE DEFINITION "
" TYPESCRIPT {{{2
Plug  'pangloss/vim-javascript'
" IDE TOOL {{{2
Plug  'majutsushi/tagbar'
Plug  'christoomey/vim-tmux-navigator'
" COLORSCHEME {{{2
Plug  'altercation/vim-colors-solarized'
Plug  'tomasr/molokai'
Plug  'chriskempson/base16-vim'
" SMALL TOOL {{{2
Plug 'ConradIrwin/vim-bracketed-paste' " 使用bracketed-paste mode，粘贴代码时避免格式化
" }}} SMALL TOOL "
call plug#end()
" call vundle#end()
" }}}1


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
" nmap <F4> :source ~/.config/nvim/init.vim <CR>
" Automatic reloading of .vimrc
" autocmd! bufwritepost .vimrc source %
if has("autocmd")
        autocmd! bufwritepost vimrc source ~/.vimrc
    endif

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

" PLUG SETTING {{{1
" AUTOLOAD BUNDLE{{{2
" }}}
" VERB {{{2
" Bundle 'christoomey/vim-titlecase' {{{3
let g:titlecase_map_keys = 0
nmap <leader>gt <Plug>Titlecase
vmap <leader>gt <Plug>Titlecase
nmap <leader>gT <Plug>TitlecaseLine
" }}}
" }}}
" NOUN {{{2
" }}}


" FILESYSTEM {{{2
"NERDTree {{{3
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
" 3}}}

" Bundle 'kien/ctrlp.vim {{{ "
"<Leader>p搜索当前目录下文件
" let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
"<Leader>f搜索MRU文件
nmap <Leader>p :CtrlPMRUFiles<CR>
"<Leader>b显示ç¼冲区文件，并可通过序号进行跳转
nmap <Leader>b :CtrlPBuffer<CR>
"设置搜索时忽略的文件
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
"修改QuickFix窗口显示的最大条目数
let g:ctrlp_max_height = 15
let g:ctrlp_match_window_reversed = 0
"设置MRU最大条目数为500
let g:ctrlp_mruf_max = 500
let g:ctrlp_follow_symlinks = 1
"默认使用全路径搜索，置1后按文件名搜索，准确率会有所提高，可以用<C-d>进行切换
let g:ctrlp_by_filename = 1
"默认不使用正则表达式，置1改为默认使用正则表达式，可以用<C-r>进行切换
let g:ctrlp_regexp = 0
"自定义搜索列表的提示符
let g:ctrlp_line_prefix = ' '

"调用ag进行搜索提升速度，同时不使用缓存文件
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
" }}} Bundle 'kien/ctrlp.vim "

" Bundle 'honza/vim-snippets' {{{3
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" }}}

" Bundle 'SirVer/ultisnips' {{{3
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsListSnippets = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsEditSplit="vertical"
" }}}

" Bundle 'coc.nvim' {{{3

"TextEdit fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> zp <Plug>(coc-diagnostic-prev)
nmap <silent> zn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = [
            \     'coc-snippets',
            \    'coc-pairs',
            \  'coc-tsserver',
            \   'coc-eslint',
            \   'coc-prettier',
            \  'coc-json',
            \]




" FIND USAGE DEFINITION {{{ "

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
"" }}}
" easymotion {{{ "
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
" }}} easymotion "
" }}} FIND USAGE DEFINITION "
" }}}

" TYPESCRIPT {{{2
" }}}
" IDE TOOL {{{2
"'majutsushi/tagbar' {{{3
nmap <C-w> :TagbarToggle<CR>
" }}}
" }}}
" COLORSCHEME {{{2
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set termguicolors "only for neovim
" set background=dark
" colorscheme solarized
" colorscheme molokai
" colorscheme base16-solarized-dark
" colorscheme phd
" colorscheme nova
" }}}
" }}}

" jsx
let g:jsx_ext_required = 0
" }}}
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols = 'fancy'
syntax enable
" colorscheme base16-monokai
set background=dark
set t_Co=256
hi Normal ctermfg=grey
hi Normal ctermbg=black
let g:solarized_termtrans = 1

if &term =~ '256color'
  set t_ut=
endif
" colorscheme base16-monokai
colorscheme molokai


let g:ag_working_path_mode="r"
let g:python3_host_prog = "/usr/local/python3/bin/python3.7"
