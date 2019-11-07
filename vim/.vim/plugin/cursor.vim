" Use blinking pipe cursor in insert mode and blinking block otherwise
	let &t_SI = "\e[5 q"
	let &t_EI = "\e[1 q"

" Reset cursor on startup
" https://vi.stackexchange.com/a/21673/20228
	augroup cursor
		au!
		autocmd VimEnter * :normal :startinsert :stopinsert
	augroup end
