set spelllang=sv,en_gb,en_us
set spellfile=.vimspell.utf8.add
set spellfile+=~/.vim/spell/en.utf-8.add
set spellfile+=~/.vim/spell/sv.utf-8.add

" Don't spellcheck modelines
autocmd Syntax * syn region vimModeline start="\svim.\{-}:" end=+:+ display oneline transparent containedin=.*Comment.* contains=@NoSpell
