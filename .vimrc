set nocompatible
set mousehide
filetype on
filetype plugin on
syntax on
nnoremap H gT
nnoremap L gt
au BufNewFile,BufRead *.cuh set ft=cuda
highlight Comment ctermfg=black
