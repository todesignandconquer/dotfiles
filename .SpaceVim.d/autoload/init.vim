function! init#after() abort
  set clipboard=unnamed

  let g:jsx_ext_required = 0

  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

  nnoremap <S-k> :m-2<CR>
  nnoremap <S-j> :m+<CR>
  inoremap <S-k> <Esc>:m-2<CR>
  inoremap <S-j> <Esc>:m+<CR>

  autocmd FileType python setlocal ts=8 sw=4 sts=4 expandtab
endfunction
