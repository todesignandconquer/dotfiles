"==============================================================================
" elianderson vimrc
"==============================================================================
set nocompatible                " No vi compatability
set clipboard=unnamed
set lazyredraw
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:jsx_ext_required = 0
let g:quantum_black=1
let g:javascript_plugin_flow=1

"===  Custom colorscheme  =====================================================
set background=dark
set termguicolors
colorscheme quantum

filetype off
" Pathogen Setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

"===  Source Lib Files  =======================================================
for file in split(glob('~/.vim/lib/*.vim'), '\n')
  exe 'source' file
endfor

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
autocmd BufNewFile,BufReadPost *.ts set filetype=typescript
autocmd BufNewFile,BufReadPost *.swift set filetype=swift
autocmd BufRead /tmp/psql.edit.* set syntax=sql
autocmd FileType javascript JsPreTmpl javascript
autocmd FileType typescript JsPreTmpl typescript
autocmd FileType python setlocal ts=8 sw=4 sts=4 expandtab

if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
