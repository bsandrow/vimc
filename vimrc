"            +-------------+
"------------| basic setup |
"            +-------------+

set nocompatible                " disable old-vi compatability
set backspace=indent,eol,start  " let backspace plow over everything
set incsearch                   " we want to see the first match before actually searching
set number                      " use line numbers
set nowrap                      " only wrap lines when explicity told so
set virtualedit=all             " i like being able to move the cursor all around
"set titlestring=%t%(\ [%R%M]%)  " rename the title
set vb t_vb=                    " i hate visual/audible bells // turn on visualbell, and set the vb character to nothing
set ruler                       " easier then using an election!

syntax on

" >>>> tabs >>>>
set expandtab       " <Tab> inserts spaces instead of tabchar
set tabstop=4       " display tabs as N spaces
set shiftwidth=4    " used when indenting and shifting selections
set softtabstop=4

" >>>> perl syntax control >>>>
let g:perl_extended_vars=1
let g:perl_include_pod=1
let g:perl_fold=1
let g:perl_string_as_statement=1

" >>>> Jacob's listchars >>>>
set list
set listchars=tab:»·,trail:·
"set listchars=eol:$

" >>>> MatchParen control >>>>
let loaded_matchparen=1     " disable it

" want Y to yank-to-eol like D is cut-to-eol
noremap Y y$

" >>>> autocmd stuff >>>>
if has("autocmd")
    filetype plugin on
    filetype indent on
endif

" >>>> gvim >>>>
if has("gui_running")
    color asu1dark
endif

" >>>> local changes >>>>
let g:localconf=expand("$HOME/.vim/local")
if filereadable(g:localconf)
    source g:localconf
endif

"vim:ft=vim:
