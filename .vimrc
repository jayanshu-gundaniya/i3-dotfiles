set nu rnu
syntax on
set ts=2 sts=2 expandtab

" Show highlighting groups for current word (needed when setting the syntax colors)
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc
