let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
let g:gitgutter_realtime = 0

" Don't keep fugitive buffers around in the buffer list
" see http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database
autocmd BufReadPost fugitive://* set bufhidden=delete 
