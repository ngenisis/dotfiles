set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()
filetype plugin indent on

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

" Split to the bottom and the right
set splitbelow splitright

" Shortcuts for switching between splits
map	<C-h>	<C-w>h
map	<C-j>	<C-w>j
map	<C-k>	<C-w>k
map	<C-l>	<C-w>l

" Disable automatic comments on newlines
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o
