"" 不兼容vi模式
set nocompatible
" 菜单语言 中文为 zh_CN
set langmenu=en_US
set fileencodings=utf-8,chinese,latin-1
" 中文不乱码了，世界都好了
set fileencoding=utf-8
" 窗口左侧显示行号
set number
" 配合number，更高效的行间跳转
set relativenumber
" vim 以最大化打开
au" GUIEnter * simalt ~x
" 查找时忽略大小写
set ignorecase
" 当输入中含有大写的时候会强制区分大小写
set smartcase
" 输入进行中实时匹配查找到的字符串
set incsearch
" 用来自动缩进
set autoindent
" 自动判断缩进长度，一般适用于类C语言
set smartindent
" 用一定的空格来代替tab
set expandtab
" tab占4个空格
set tabstop=4
" 设置expandtab的情况下，输入backspace删除的空格
set softtabstop=4
"一般情况下tabstop=softtabstop=shiftwidth，这样不会乱
set shiftwidth=4
"设置命令历史行数
set history=700
" set undolevels=700
" vim 自身命令行模式智能补全
set wildmenu
" 递归查找路径
set path+=**


"show
 "打开光标的行列位置显示功能
set ruler
"行高亮
set cursorline
 "列高亮，与函数列表有冲突
set cursorcolumn
 "设置命令行的高度
set cmdheight=2
"不要闪烁
set novisualbell
set list
"显示TAB健
set listchars=tab:>-,trail:-
" 让配置变更立即生效
" autocmd BufWritePost ~/.config/nvim/init.vim source % " 让配置变更立即生效
if has("autocmd")
        autocmd! bufwritepost vimrc source ~/.vimrc
    endif
nmap <F4> :source ~/.vimrc <CR>

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
