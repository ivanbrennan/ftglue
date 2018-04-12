setl iskeyword-=#

nmap <buffer><silent> <Plug>(ArticulateTag)   :<C-U>exe v:count1."tag <C-R>=<SID>vimcword()<CR>"<CR>
nmap <buffer><silent> <Plug>(ArticulateTjump) :<C-U>tjump <C-R>=<SID>vimcword()<CR><CR>

func! s:vimcword() abort
  let orig=&l:iskeyword
  setlocal iskeyword+=#

  let cword=expand('<cword>')

  let &l:iskeyword=orig
  return cword
endf
