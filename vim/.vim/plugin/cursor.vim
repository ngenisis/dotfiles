" Use blinking pipe cursor in insert mode and blinking block otherwise
	let &t_SI = "\e[5 q"
	let &t_EI = "\e[1 q"
	augroup cursor
		au!
		autocmd VimEnter * silent !echo -ne "\e[1 q"
		autocmd VimEnter * redraw!
	augroup end
