let [b:ls, b:sm, b:ru] = [&laststatus, &showmode, &ruler]

set laststatus=0 noshowmode noruler

augroup FzfNeovim
  au!
  au BufLeave <buffer> let [&laststatus, &showmode, &ruler] = [b:ls, b:sm, b:ru]
augroup END
