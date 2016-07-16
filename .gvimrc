syntax on
filetype plugin indent on

function! NumberToggle()
    if(&relativenumber == 1)
        set relativenumber!
    else
        set relativenumber
    endif
endfunc

" let g:solarized_visibility="high"    "default value is normal
set guifont=Hack:h13
set background=dark
colorscheme solarized
