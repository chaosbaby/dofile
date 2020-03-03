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

source /root/.config/plug/nerdTree.vimrc
source /root/.config/plug/base.vimrc
source /root/.config/plug/molokai.vimrc
source /root/.config/plug/all.vimrc

