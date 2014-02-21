set conceallevel=2

let g:javascript_conceal=1

" I've disabled this for now as it causes several problems, like making new
" short folds initially closed.
"
" see http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
" autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
" autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif


command EchoSyntaxStack echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
