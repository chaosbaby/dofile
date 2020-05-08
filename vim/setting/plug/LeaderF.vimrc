" leaderF insert mode maps {{{ "
" | Command                    | Description
" | -------                    | -----------
" | `<C-C>`<br>`<ESC>`         | quit from LeaderF
" | `<C-R>`                    | switch between fuzzy search mode and regex mode
" | `<C-F>`                    | switch between full path search mode and name only search mode
" | `<Tab>`                    | switch to normal mode
" | `<C-V>`<br>`<S-Insert>`    | paste from clipboard
" | `<C-U>`                    | clear the prompt
" | `<C-W>`                    | delete the word before the cursor in the prompt
" | `<C-J>`                    | move the cursor downward in the result window
" | `<C-K>`                    | move the cursor upward in the result window
" | `<Up>`/`<Down>`            | recall last/next input pattern from history
" | `<2-LeftMouse>`<br>`<CR>`  | open the file under cursor or selected(when multiple files are selected)
" | `<C-X>`                    | open in horizontal split window
" | `<C-]>`                    | open in vertical split window
" | `<C-T>`                    | open in new tabpage
" | `<F5>`                     | refresh the cache
" | `<C-LeftMouse>`<br>`<C-S>` | select multiple files
" | `<S-LeftMouse>`            | select consecutive multiple files
" | `<C-A>`                    | select all files
" | `<C-L>`                    | clear all selections
" | `<BS>`                     | delete the preceding character in the prompt
" | `<Del>`                    | delete the current character in the prompt
" | `<Home>`                   | move the cursor to the begin of the prompt
" | `<End>`                    | move the cursor to the end of the prompt
" | `<Left>`                   | move the cursor one character to the left in the prompt
" | `<Right>`                  | move the cursor one character to the right in the prompt
" | `<C-P>`                    | preview the result
" | `<C-Up>`                   | scroll up in the popup preview window
" | `<C-Down>`                 | scroll down in the popup preview window

" }}} leaderF insert mode maps "
" Fold description {{{ "
" Once LeaderF is launched:





" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
" let $GTAGSCONF='/etc/gtags.conf'
let $GTAGSCONF='/usr/local/share/gtags/gtags.conf'
" let $GTAGSLABEL='native-pygments'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
" let g:Lf_Gtagslabel = 'pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

noremap <leader>fc :LeaderfFunction <CR>
