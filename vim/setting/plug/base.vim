" 不兼容vi模式
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
au GUIEnter * simalt ~x
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
