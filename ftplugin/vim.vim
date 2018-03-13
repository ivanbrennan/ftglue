setl foldmethod=marker

" evaluate contents of the current buffer
nnoremap <silent><buffer> <leader>vm  :%y z \| @z<CR>
xnoremap <silent><buffer> <leader>vm  :y z  \| @z<CR>
