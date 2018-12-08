" display line number of current line and relative line numbers
set number relativenumber

" Indentation
set autoindent smartindent

" Set tab and shift width to 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Hard mode
noremap		<Up>	<Nop>
inoremap	<Up>	<Nop>
noremap		<Down>	<Nop>
inoremap	<Down>	<Nop>
noremap		<Left>	<Nop>
inoremap	<Left>	<Nop>
noremap		<Right>	<Nop>
inoremap	<Right>	<Nop>

" Remap S to replace all in normal mode
nnoremap	S	:%s//g<Left><Left>
