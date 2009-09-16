" vim:ft=vim:

colorscheme blue    " set gui colorscheme to 'blue'
set guioptions-=m   " turn off menu
set guioptions-=T   " turn off toolbar
set mouse=a         " enable the mouse
set mousehide       " hide the mouse around the cursor
set guifont=Terminus\ 9

" Keybindings
" -----------
inoremap    <c-s>   <c-o>:update<cr>
vnoremap    <c-s>   <c-o>:update<cr>
noremap     <c-s>   <c-o>:update<cr>

" Local Gui Settings
" ------------------
if filereadable(expand("$HOME/.vim/local-gui.vim"))
    source ~/.vim/local-gui.vim
endif
