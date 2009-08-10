" vim:ft=vim:expandtab:tw=0:ts=4:sw=4

if has("autocmd")
    " ensure all files syntax highlight
    autocmd BufEnter * :syntax sync fromstart
    " change working directory to path of current buffer's file
    "  source: http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
    autocmd BufEnter * lcd %:p:h

    """ GIT SETTINGS
    autocmd BufNewFile,BufRead COMMIT_EDITMSG                       set filetype=gitcommit tw=80
    autocmd BufNewFile,BufRead *.git/config,gitconfig,.gitconfig    set filetype=gitconfig tw=80
    autocmd BufNewFile,BufRead git-rebase-todo                      set filetype=gitrebase
    autocmd BufNewFile,BufRead .msg.[0-9]*
            \ if getline(1) =~ '^From.*# This line is ignored.$' |
            \   setf gitsendmail |
            \ endif
    autocmd BufNewFile,BufRead *.git/**
            \ if getline(1) =~ '^\x\{40\}\>\|^ref: ' |
            \   setf git |
            \ endif

    """ MARKDOWN CONFIG
    augroup MARKDOWN
        autocmd!
        autocmd FileType mkd set formatoptions=tcroqn2
        autocmd FileType mkd set comments=n:>
        autocmd FileType mkd setlocal wrap
    augroup END

    augroup MOIN
        autocmd!
        autocmd FileType moin setlocal wrap
    augroup END
    """ PHP SMARTY TEMPLATE SETTINGS
    augroup SMARTY
        autocmd!
        autocmd BufNewFile,BufRead *.tpl set filetype=html
    augroup END

    """ C/C++
    augroup c_files
        autocmd!
        autocmd FileType    cpp,c,h set autoindent
        autocmd FileType    cpp,c,h set cindent
        autocmd FileType    cpp,c,h set number
        autocmd FileType    cpp,c,h set foldenable
        autocmd FileType    cpp,c,h set foldcolumn=2
        autocmd FileType    cpp,c,h set foldmethod=syntax
        autocmd FileType    cpp,c,h set shiftwidth=4
        autocmd FileType    cpp,c,h set comments=sl:/*,mb:*,elx:*
        "autocmd FileType    cpp,c,h syn region Block start="{" end="}" transparent fold
        "autocmd BufNewFile  *.c     0r ~/.vim/skel/skel.c
        " [ abbreviations ]
        "ab #define #define
        "ab #i #include
    augroup END

    """ SHELL SCIRPTS
    augroup shell_scripts
        autocmd!
        autocmd FileType sh,zsh,csh set ai si nu
    augroup END
endif
