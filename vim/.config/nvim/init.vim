set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Disable line numbers in a terminal buffer
	autocmd TermOpen * setlocal nonumber norelativenumber

" Enter terminal mode automatically when a new terminal buffer is opened
	autocmd TermOpen * startinsert

" Open a terminal in the current window with <A-t>
	noremap		<A-t>	<C-\><C-n>:term<Enter>i
