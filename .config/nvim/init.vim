set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Disable line numbers in a terminal buffer
au TermOpen * setlocal nonumber norelativenumber
