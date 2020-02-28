function SourceVim(path)
   if filereadable(a:path)
       execute "source ".a:path
   endif
endfunction
" call SourceVim($HOME."/.config/plug/base.vim")
" call SourceVim($HOME."/.config/plug/base.vimrc")

call plug#begin('~/.vim/plugged')
" Plug  'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug  'Xuyuanp/nerdtree-git-plugin'
" Plug 'ryanoasis/vim-devicons'
call plug#end()
set encoding=UTF-8

map <C-e> :NERDTreeToggle<CR>

"NERDTree {{{3
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
" 3}}}
"
"
" let g:NERDTreeUseSimpleIndicator = 1

let g:NERDTreeIndicatorMapCustom = {
   \ "Modified"  : "✹",
   \ "Staged"    : "✚",
   \ "Untracked" : "✭",
   \ "Renamed"   : "➜",
   \ "Unmerged"  : "═",
   \ "Deleted"   : "✖",
   \ "Dirty"     : "✗",
   \ "Clean"     : "✔︎",
   \ "Unknown"   : "?"
   \ }

" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
