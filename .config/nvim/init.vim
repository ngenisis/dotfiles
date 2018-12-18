set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Disable line numbers in a terminal buffer
au TermOpen * setlocal nonumber norelativenumber

" Open a terminal in the current window with <A-t>
noremap		<A-t>	<C-\><C-n>:term<Enter>i
