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

" FILESYSTEM & NAVI {{{"
Plug 'Yggdroot/LeaderF'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vista.vim'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
" }}} FILESYSTEM "

" VERB {{{2
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
" }}} VERB "
"
" LANGUAGE {{{ "
Plug 'fatih/vim-go', {'for': 'go'}
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'mzlogin/vim-markdown-toc'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" }}} LANGUAGE "

" SYNTAX & COMPLETION & FORMAT {{{2
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" Plug 'iamcco/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

" Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
" Plug 'voldikss/coc-todolist', {'do': 'yarn install --frozen-lockfile'}


" Plug '', {'do': 'yarn install --frozen-lockfile'}

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
Plug 'junegunn/gv.vim'
" }}} GIT HELPER "

" view-enhangce {{{ "
Plug 'lfv89/vim-interestingwords'
Plug 'itchyny/vim-cursorword'
Plug 'flazz/vim-colorschemes'
" pop schemes molokai hybrid gruvbox
Plug 'Yggdroot/indentLine'
" }}} view-enhangce "
"
" misc {{{ "
Plug 'skywind3000/asyncrun.vim'
Plug 'mhinz/vim-startify'
Plug 'farmergreg/vim-lastplace'
Plug 'jpalardy/vim-slime'
Plug 'ianding1/leetcode.vim'
Plug 'liuchengxu/vim-which-key'
" }}} misc "

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

" let g:clipboard = {
"         \   'name': 'myClipboard',
"         \   'copy': {
"         \      '+': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
"         \      '*': {lines, regtype -> extend(g:, {'foo': [lines, regtype]}) },
"         \    },
"         \   'paste': {
"         \      '+': {-> get(g:, 'foo', [])},
"         \      '*': {-> get(g:, 'foo', [])},
"         \   },
"         \ }

set clipboard=unnamedplus
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

set mouse=

if has("autocmd")
    " autocmd FileType vimwiki set ft=markdown
    autocmd FileType vimwiki,markdown source ~/.dotfiles/vim/setting/plug/md.vimrc
endif

" }}} vimwiki "

" markdown preview {{{ "
" example
nmap <Leader>mr <Plug>MarkdownPreview
nmap <Leader>ms <Plug>MarkdownPreviewStop
nmap <Leader>mt <Plug>MarkdownPreviewToggle
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
" }}} markdown preview "

" vim-easy-align {{{ "
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}} vim-easy-align "

" vim-slime {{{ "
let g:slime_target = "tmux"
" let g:slime_default_confit = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}
let g:slime_python_ipython = 1
" }}} vim-slime "

" leetcode {{{ "
let g:leetcode_browser="chrome"
let g:leetcode_china=1
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
" }}} leetcode ""

" vim-gitgutter {{{ "
nmap <space>j <Plug>(GitGutterNextHunk)
nmap <space>k <Plug>(GitGutterPrevHunk)
" }}} vim-gitgutter "

" vim-easymotion {{{ "
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" }}} vim-easymotion "
"
"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
