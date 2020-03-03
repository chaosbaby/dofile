call plug#begin('~/.vim/plugged')
" Plug  'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug  'Xuyuanp/nerdtree-git-plugin'
Plug  'tomasr/molokai'
" Plug 'ryanoasis/vim-devicons'
call plug#end()



"NERDTree {{{3
" How can I close vim if the only window left open is a NERDTree?
map <C-e> :NERDTreeToggle<CR>
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

let g:NERDTreeUseSimpleIndicator = 1

