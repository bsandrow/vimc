" Vim filetype plugin file
" Language:         Todo file
" Maintainer:       Brandon Sandrowicz <bsandrow@gmail.com>
" Latest Revision:  2009-08-27

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1
let b:undo_ftplugin = "setl com< cms< et< fo< sts< sw<"

setlocal comments=:#
setlocal commentstring=#\ %s
setlocal expandtab
setlocal formatoptions-=t
setlocal formatoptions+=croql
setlocal softtabstop=2
setlocal shiftwidth=2
