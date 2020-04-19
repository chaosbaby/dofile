function ToggleBox()
    
 " execute setline(line('.'), '- [ ] '.getline('.'))

echomsg("toggleBox")
endfunction

function ToggleDone() abort
    
endfunction

function ToogleCancelled() 
    
endfunction

function ToogleStart() 
    
endfunction

function ToogleTimer() 
    
endfunction


" use python function, vim compiled with +python or +python3
function! HelloPython()
python3 << endOfPython
import re,vim

print('Hello Python')
print(vim.current.line)
vim.current.line = "- [x] " + vim.current.line

endOfPython
endfunction

function! Toogle()
python3 << endOfPython
import re,vim

def toogle(line, toogleList):
    length = len(toogleList)
    for index in range(0,length):
        toogleMark = toogleList[index]
        if line.find(toogleMark) >= 0:
            nextMark = ""
            if index != length -1:
                nextMark = toogleList[(index+1)%length]
            return line.replace(toogleMark, nextMark)
    matchObj = re.search(r"[^\s]+", line)
    if matchObj:
        index = matchObj.span()[0]
        return line[:index] + toogleList[0] + line[index:]
    else:
        return line

flowList = ["- [ ] ","- [x] "]
vim.current.line = toogle(vim.current.line, flowList)

endOfPython
endfunction


nmap <Leader>b :call Toogle() <cr>
xmap <Leader>b :call Toogle() <cr>
