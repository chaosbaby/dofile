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

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tomtom/tcomment_vim'
call plug#end()

source ~/.config/plug/base.vimrc
source ~/.config/plug/coc.vim
source ~/.config/plug/fzf.vimrc
"source ~/.config/plug/nerdTree.vimrc
"source ~/.config/plug/molokai.vimrc
"source ~/.config/plug/all.vimrc
colorscheme molokai
"  adfasf "

map <C-e> :NERDTreeToggle<CR>
"syntax on
"colorscheme onedark
"

