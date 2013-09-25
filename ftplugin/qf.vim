if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1
let b:savedMapping=""

function s:removeMapping()
  let b:savedMapping=maparg("<CR>", "n")
  if len(b:savedMapping)
    nunmap <CR>
  endif
endfunction

function s:restoreMapping()
  if len(b:savedMapping)
    execute "nnoremap <CR> ".b:savedMapping
  endif
endfunction

augroup UnsetEnterInQuickfix
  autocmd!
  autocmd BufWinEnter,BufEnter <buffer> call s:removeMapping()
  autocmd BufLeave <buffer> call s:restoreMapping() 
augroup end   
