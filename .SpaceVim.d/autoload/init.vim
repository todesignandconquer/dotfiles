function! init#after() abort
  set clipboard=unnamed
  set ignorecase " perfect cocktail for searching
  set smartcase  " perfect cocktail for searching
  set incsearch  " highlight current search matches
  set showmatch  " move to search match
  set nohlsearch " Don't highlight the search after I am done
  set gdefault   " All matches in a line are substituted

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
  nnoremap / /\v
  vnoremap / /\v

  autocmd FileType python setlocal ts=8 sw=4 sts=4 expandtab
endfunction
