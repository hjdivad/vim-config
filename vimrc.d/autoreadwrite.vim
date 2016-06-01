" Read and write eagerly
set autoread
set autowrite
set autowriteall
augroup AutoWrite
  autocmd!
  autocmd BufLeave,FocusLost * silent! wall
augroup end

" Switch modified buffers without being forced to save
set hidden

" Ignore conflicting swap files.
autocmd SwapExists * let v:swapchoice='e'
