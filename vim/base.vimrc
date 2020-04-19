function! SourceVim(path)
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

" FILESYSTEM & NAVI {{{w2 "
Plug 'Yggdroot/LeaderF'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vista.vim'
Plug  'majutsushi/tagbar'
" }}} FILESYSTEM "

" VERB {{{2
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" }}} VERB "
"
" LANGUAGE {{{ "
Plug 'fatih/vim-go', {'for': 'go'}
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'mzlogin/vim-markdown-toc'
Plug 'vimwiki/vimwiki', { 'tag': 'v2.4' }
" }}} LANGUAGE "

" SYNTAX & COMPLETION & FORMAT {{{2
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
" Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
" Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'iamcco/coc-vimlsp', {'do': 'yarn install --frozen-lockfile'}
" Plug 'iamcco/coc-gitignore', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
" Plug 'voldikss/coc-translator', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
"
" Plug 'iamcco/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}
" Plug 'voldikss/coc-todolist', {'do': 'yarn install --frozen-lockfile'}
"
" Plug '', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}

            " \'coc-snippets',
            " \'coc-git',
            " \'coc-explorer',
            " \'coc-python',
            " \'coc-yank',
            " \'coc-json',
            " \'coc-vimlsp',
            " \'coc-gitignore',
            " \'coc-lists',
            " \'coc-translator',
            " \'coc-prettier',
            "
            " \'coc-pairs',
            " \'coc-yaml',

" }}}SYNTAX & COMPLETION"
"
" GIT HELPER {{{2"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" }}} GIT HELPER "

" view-enhangce {{{ "
Plug 'lfv89/vim-interestingwords'
Plug 'itchyny/vim-cursorword'
Plug 'flazz/vim-colorschemes'
" }}} view-enhangce "

Plug 'skywind3000/asyncrun.vim'

call plug#end()

" }}} VIM-PLUG "

source ~/.dotfiles/vim/setting/plug/base.vimrc
source ~/.dotfiles/vim/setting/plug/coc.vim
source ~/.dotfiles/vim/setting/plug/fzf.vimrc
source ~/.dotfiles/vim/setting/plug/LeaderF.vimrc
"source ~/.config/plug/nerdTree.vimrc
"source ~/.config/plug/molokai.vimrc
"source ~/.config/plug/all.vimrc
colorscheme molokai

nmap <space>w <C-w>
" map <C-e> :NERDTreeToggle<CR>

" let g:clipboard = {
" 		\   'name': 'myClipboard',
" 		\   'copy': {
" 		\      '+': 'tmux load-buffer -',
" 		\      '*': 'tmux load-buffer -',
" 		\    },
" 		\   'paste': {
" 		\      '+': 'tmux save-buffer -',
" 		\      '*': 'tmux save-buffer -',
" 		\   }LeaderF
" 		\   'cache_enabled': 1,
" 		\ }

let g:clipboard = {
        \   'name': 'myClipboard',
        \   'copy': {
        \      '+': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
        \      '*': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
        \    },
        \   'paste': {
        \      '+': {-> get(g:, 'foo', [])},
        \      '*': {-> get(g:, 'foo', [])},
        \   },
        \ }

command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

set nocompatible
filetype plugin on
syntax on
" vimwiki {{{ "
" default syntax
" let vimwiki_default = {}
" let vimwiki_default.path =  '~/vimwiki/'
" let vimwiki_default.path_html = ''
" let vimwiki_default.syntax = 'markdown'
" let vimwiki_default.ext = '.md'
" let vimwiki_default.name = 'DefaultSyntax'
" let g:vimwiki_list = [vimwiki_default,{'path': '~/vimwiki/','syntax': 'markdown', 'ext': '.md'}]
"
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown'}
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" let g:vimwiki_list = [{'path': '~/vimwiki/', 'ext': '.md'}]
" }}} vimwiki "

let g:instant_markdown_autostart = 0
" set mouse=
"
if has("autocmd")
    autocmd FileType vimwiki set ft=markdown
endif

imap <C-j> <Right>

