" Strip the moduleprefix, eg `appkit`
set includeexpr=substitute(v:fname,'\\([^/]*/\\)\\(.*\\)','\\2','g')
