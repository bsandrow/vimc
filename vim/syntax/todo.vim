" Vim syntax file
" Language:         Todo
" Maintainer:       Brandon Sandrowicz <bsandrow@gmail.com>
" Latest Revision:  2009-08-27

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn region  todoComment display oneline start='\%(^\|\s\)#' end='$' contains=@Spell
syn match   todoGroup   display '^\s*\w\+:\s*$'
syn match   todoTag     display '+\w\+'
syn match   todoTag     display '@\w\+'

hi def link todoTag     Number
hi def link todoGroup   Keyword
hi def link todoComment Comment

let b:current_syntax = "todo"

let &cpo = s:cpo_save
unlet s:cpo_save
