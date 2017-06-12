"==============================================================================
" elianderson vimrc
"==============================================================================
set nocompatible                " No vi compatability
set clipboard=unnamed

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
autocmd BufRead /tmp/psql.edit.* set syntax=sql
"
"Use locally installed flow
let local_flow = finddir('node_modules', '.;') . '/.bin/flow'
if matchstr(local_flow, "^\/\\w") == ''
  let local_flow= getcwd() . "/" . local_flow
endif
if executable(local_flow)
  let g:flow#flowpath = local_flow
endif
