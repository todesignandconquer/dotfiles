function! init#after() abort
  set clipboard=unnamed
  set ignorecase " perfect cocktail for searching
  set smartcase  " perfect cocktail for searching
  set incsearch  " highlight current search matches
  set showmatch  " move to search match
  set nohlsearch " Don't highlight the search after I am done
  set gdefault   " All matches in a line are substituted
  set encoding=UTF-8

  let g:jsx_ext_required = 0
  let g:javascript_plugin_flow = 1
  let g:webdevicons_enable = 1
  let g:webdevicons_enable_vimfiler = 1
  let g:syntastic_python_checkers = ['flake8', 'pylint', 'python']
  let g:spacevim_enable_statusline_bfpath = 1


  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

  nnoremap ∆ :m .+1<CR>==
  nnoremap ˚ :m .-2<CR>==
  inoremap ∆ <Esc>:m .+1<CR>==gi
  inoremap ˚ <Esc>:m .-2<CR>==gi
  vnoremap ∆ :m '>+1<CR>gv=gv
  vnoremap ˚ :m '<-2<CR>gv=gv

  nnoremap / /\v
  vnoremap / /\v
endfunction
