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
set hidden                      " allow unsaved buffers to be backgrounded

syntax on

" >>>> tabs >>>>
set expandtab       " <Tab> inserts spaces instead of tabchar
set tabstop=4       " display tabs as N spaces
set shiftwidth=4    " used when indenting and shifting selections
set softtabstop=4

" >>>> java syntax control >>>>
let g:java_space_errors=1
let g:java_ignore_javadoc=1
let g:java_highlight_functions=1
let g:java_allow_cpp_keywords=0

" >>>> perl syntax control >>>>
let g:perl_extended_vars=1
let g:perl_include_pod=1
let g:perl_fold=1
let g:perl_string_as_statement=1

" >>>> perl-support control >>>>
let g:Perl_NoKeyMappings=0  " I'll enable the keybindings I want manually

" >>>> Jacob's listchars >>>>
set list
set listchars=tab:»·,trail:·
"set listchars=eol:$

" >>>> paren/bracket control >>>>
let loaded_matchparen=1     " disable it
set noshowmatch             " don't want to see matching p/b's as I'm typing

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
    set guifont=Terminus\ 9

    " axe the toolbar
    set guioptions-=T
endif

" >>>> local changes >>>>
if filereadable(expand("$HOME/.vim/local"))
    source $HOME/.vim/local
endif

"vim:ft=vim:
