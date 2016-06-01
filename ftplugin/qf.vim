if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1
let b:savedMapping=""


if !exists("g:did_qf_reset_cr")
  let g:did_qf_reset_cr = 1

  " actually calling this in a buffer with &nomodifiable causes errors for some
  " odd reason
  "
  " function s:log(msg)
  "   if (&verbose) >= 12
  "     echo("[QF][CRRestore] " . msg)
  "   endif
  " endfunction

  function s:removeMapping()
    let b:savedMapping=maparg("<CR>", "n")
    " s:log("Saved mapping " . b:savedMapping)

    if len(b:savedMapping)
      nunmap <CR>
    endif
  endfunction

  function s:restoreMapping()
    if len(b:savedMapping)
      " s:log("Restoring mapping " . b:savedMapping)

      execute "nnoremap <CR> ".b:savedMapping
    endif
  endfunction
endif

augroup UnsetEnterInQuickfix
  autocmd!
  autocmd BufWinEnter,BufEnter <buffer> call s:removeMapping()
  autocmd BufLeave,BufDelete <buffer> call s:restoreMapping() 
augroup end   
