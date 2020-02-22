call plug#begin('~/.vim/plugged')
Plug  'w0rp/ale'
call plug#end()
" w0rp/ale {{{ "
let g:ale_fixers = {
            \   'javascript': ['eslint'],
            \   'python': ['autopep8'],
            \}

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" let g:ale_fix_on_save = 1
" let g:ale_completion_enabled = 1


" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap zp <Plug>(ale_previous_wrap)
nmap zn <Plug>(ale_next_wrap)

" let g:ale_linters = {
"             \   'javascript': ['prettier_eslint'],
"             \    'lua': ['luacheck'],
"             \    'python': ['flake8'],
"             \}

"let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
"let g:ale_javascript_prettier_eslint_use_global = 1

" ""始终开启标志列
" let g:ale_sign_column_always = 1
" let g:ale_set_highlights = 0
" "自定义error和warning图标
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
" ""在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" "显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" ""普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
" "<Leader>s触发/关闭语法检查
" "nmap <Leader>s :ALEToggle<CR>
" ""<Leader>d查看错误或警告的详细信息
" nmap <Leader>d :ALEDetail<CR>
" }}} w0rp/ale "


