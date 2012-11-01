call pathogen#infect()

let mapleader = ","
let g:QSMatchFn = "fuzzy"

color molokai

imap <D-e> <C-y>,

set foldmethod=syntax
set foldlevelstart=20

nnoremap <esc> :noh<return><esc>
nnoremap <leader>m :w <return>
nmap <leader>r <Plug>ActivateQS
nmap <leader>f :FufCoverageFile<return>
nnoremap <F5> :%s/\s\+$//<return>
nmap <F5> :%s/\s\+$//<return>

noremap <Down> <c-d>
noremap <Up> <c-u>
noremap <Left> <nop>
noremap <Right> <nop>

let g:QSMatchFn = "fuzzy"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let NERDTreeShowHidden=1
:set paste
:set hidden
