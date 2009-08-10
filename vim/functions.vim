"
" Name:     functions.vim
" Author:   Brandon Sandrowicz <bsandrow@gmail.com>
" License:  GPLv2
" Desc:     my custom vim functions

function LocalBracketMatchingKeysOn()
    inoremap <buffer> { {}
    inoremap <buffer> ( ()
    inoremap <buffer> [ []
endfunction

function LocalBracketMatchingKeysOff()
    inoremap <buffer> { {
    inoremap <buffer> ( (
    inoremap <buffer> [ [
endfunction

" ___HexMode___
" source -- vim.wikia.com/wiki/Improved_Hex_editing
function ToggleHex()
    " hex mode should be considered a read-only operation
    " save values for modified and read-only for restoration later,
    " and clear the read-only flag for now
    let l:modified=&mod
    let l:oldreadonly=&readonly
    let &readonly=0
    let l:oldmodifiable=&modifiable
    let &modifiable=0
    if !exists("b:editHex") || !b:editHex
        " save old options
        let b:oldft=&ft
        let b:oldbin=&bin
        " set new options
        setlocal binary " make sure it overrides any textwidth, etc
        let &ft="xxd"
        " set status
        let b:editHex=1
        " switch to hex editor
        %!xxd
    else
        " restore old options
        let &ft=b:oldft
        if !b:oldbin
            setlocal nobinary
        endif
        " set status
        let b:editHex=0
        " return to normal editing
        %!xxd -r
    endif
    " restore values for modified and read only state
    let &mod=l:modified
    let &readonly=l:oldreadonly
    let &modifieable=l:oldmodifiable
endfunction

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

