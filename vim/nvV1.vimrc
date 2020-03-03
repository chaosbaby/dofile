" plug install {{{1
call plug#begin('~/.vim/plugged')
" AUTOLOAD BUNDLE{{{2
" vim-plug 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间

" VERB {{{2
Plug 'tpope/vim-surround'
Plug  'tpope/vim-commentary'
Plug  'tpope/vim-repeat'
" NOUN {{{2
" you can add textobj from web (https://github.com/kana/vim-textobj-user/wiki)
Plug  'kana/vim-textobj-user'
" FILESYSTEM {{{2
Plug  'scrooloose/nerdtree'
Plug  'Xuyuanp/nerdtree-git-plugin'
Plug  'lokaltog/vim-powerline'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" GIT HELPER {{{2
Plug  'tpope/vim-fugitive'
Plug  'airblade/vim-gitgutter'
" SYNTAX & COMPLETION {{{2
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug  'SirVer/ultisnips'
Plug  'garbas/vim-snipmate'
Plug  'honza/vim-snippets'
" }}} SYNTAX & COMPLETION "
" FIND USAGE DEFINITION {{{ "
Plug  'easymotion/vim-easymotion'
" }}} FIND USAGE DEFINITION "
" IDE TOOL {{{2
Plug  'majutsushi/tagbar'
Plug  'christoomey/vim-tmux-navigator'
" }}} SMALL TOOL "
call plug#end()
" call vundle#end()
" }}}1
