" vim:ft=vim:

" Basic Settings
" --------------
set nocompatible
set titlestring=%t%(\ [%R%M]%)
syntax on
filetype indent on
filetype plugin on
set history=100
set vb t_vb=
set backspace=indent,eol,start
set number
set incsearch
set virtualedit=all
set ww=b,s,h,l,[,],<,>
set formatoptions=tcqrn
set nowrap
set ts=4 sts=4 sw=4 et nosta
set foldenable foldmethod=indent foldlevel=100
set laststatus=1

let loaded_matchparen=1
let perl_extended_vars=1


" Keys
" ----
noremap Y       y$

" Sometimes keys don't function with term type of 'screen'
" so force it to recognize it as an xterm-compatible term
if &term == "screen"
    set term=xterm
endif

if &term =~ '^rxvt-*'
    source '~/.vim/rxvt.vim'
endif

" Force 256 colors if we have a terminal-type that
" probably supports it
if &term =~ '*256*'
    set t_Co=256
endif

source ~/.vim/autocmd.vim
