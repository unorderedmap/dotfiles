set nocompatible
set mousehide
filetype on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
syntax on
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4

function! CommentToggle()
    execute ':silent! s/\([^ ]\)/\/\/ \1/'
    execute ':silent! s/^\( *\)\/\/ \/\/ /\1/'
endfunction

map <F7> :call CommentToggle()<CR>

inoremap {<CR> {<CR>}<Esc>O
