"
" Name:     functions.vim
" Author:   Brandon Sandrowicz <bsandrow@gmail.com>
" License:  GPLv2
" Desc:     my custom vim functions

"___HexMode 2___
"source http://www.darksmile.net/software/.vimrc.html
function Fxxd()
    let c=getline(".")
    if c =~ '^[0-9a-f]\{7}:'
        :%!xxd -r
    else
        :%!xxd -g4
    endif
endfunction

" vim:syntax=vim expandtab sw=4 ts=4

