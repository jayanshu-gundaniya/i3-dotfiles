set nu rnu
syntax on
set ts=2 sts=2

" Show highlighting groups for current word (needed when setting the syntax colors)
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc

set laststatus=2

set statusline =
" Buffer number
set statusline +=[%n]\ 
" File description
set statusline +=%t\ %h%m%r%w
set statusline +=%=%{GitBranchInfoString()}\ 
" Total number of lines in the file
" Filetype
set statusline +=%y\                                                   
set statusline +=%L\ 
" Line, column and percentage
set statusline +=%-8(%l,%c%V%)\ %P
