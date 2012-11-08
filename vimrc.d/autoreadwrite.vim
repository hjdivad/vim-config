" Read and write eagerly
set autoread
set autowrite
set autowriteall
autocmd BufLeave,FocusLost * silent! wall

" Switch modified buffers without being forced to save
set hidden

" Ignore conflicting swap files.
autocmd SwapExists * let v:swapchoice='e'
