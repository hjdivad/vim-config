" Find as you type
set incsearch
" Highlight search results
set hlsearch

" Search case-insensitive when the entire search is lowercase
set ignorecase
set smartcase

" Do not search over closed folds
set foldopen-=search

" Make searches very magic (ie 'not shit')
nnoremap / /\v
