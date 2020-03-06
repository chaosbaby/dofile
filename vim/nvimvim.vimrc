function SourceVim(path)
   if filereadable(a:path)
       echo a:path
       execute "source ".a:path
   endif
endfunction
" call SourceVim($HOME."/.config/plug/all.vimrc")
" call SourceVim($HOME."/.config/plug/nerdTree.vimrc")
" call SourceVim($HOME."/.config/plug/base.vimrc")
" call SourceVim($HOME."/.config/plug/molokai.vimrc")


" VIM-PLUG {{{ "

call plug#begin('~/.vim/plugged')

" FILESYSTEM & NAVI {{{2 "
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug  'majutsushi/tagbar'
" }}} FILESYSTEM "

" VERB {{{2
Plug 'tpope/vim-surround'
Plug  'tpope/vim-commentary'
Plug  'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
" }}} VERB "

" SYNTAX & COMPLETION {{{2
Plug  'SirVer/ultisnips'
Plug  'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
" Plug 'iamcco/coc-vimlsp', {'do': 'yarn install --frozen-lockfile'}
" }}}SYNTAX & COMPLETION"
"
" GIT HELPER {{{2"
Plug  'tpope/vim-fugitive'
Plug  'airblade/vim-gitgutter'
" }}} GIT HELPER "

Plug 'flazz/vim-colorschemes'
call plug#end()

" }}} VIM-PLUG "

source ~/.config/plug/base.vimrc
source ~/.config/plug/coc.vim
source ~/.config/plug/fzf.vimrc
"source ~/.config/plug/nerdTree.vimrc
"source ~/.config/plug/molokai.vimrc
"source ~/.config/plug/all.vimrc
colorscheme molokai

map <C-e> :NERDTreeToggle<CR>
