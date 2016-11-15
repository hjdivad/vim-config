" Read eagerly
set autoread


" Uncomment to enable eager writing.  Kind of annoying with broccoli
"
" set autowrite
" set autowriteall
" augroup AutoWrite
"   autocmd!
"   autocmd BufLeave,FocusLost * silent! wall
" augroup end


" Switch modified buffers without being forced to save
set hidden

" Ignore conflicting swap files.
autocmd SwapExists * let v:swapchoice='e'


" Call checktime after certain events.  This is essentially implementing
" autoread which pretty much doesn't work.
"
" sourced from
" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work
augroup checktime
  autocmd!
  if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter        * silent! checktime
        autocmd CursorHold      * silent! checktime
        autocmd CursorHoldI     * silent! checktime
        "these two _may_ slow things down. Remove if they do.
        " autocmd CursorMoved     * silent! checktime
        " autocmd CursorMovedI    * silent! checktime
    endif
augroup end
