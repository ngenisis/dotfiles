set nocompatible

" Download vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

" A Git wrapper so awesome, it should be illegal
	Plug 'tpope/vim-fugitive'
" enable repeating supported plugin maps with .
	Plug 'tpope/vim-repeat'
" comment stuff out
	Plug 'tpope/vim-commentary'
" quoting/parenthesizing made simple
	Plug 'tpope/vim-surround'
" Pairs of handy bracket mappings
	Plug 'tpope/vim-unimpaired'
" Defaults everyone can agree on
	Plug 'tpope/vim-sensible'
" Helpers for UNIX
	Plug 'tpope/vim-eunuch'
" Highlights trailing whitespace in read and provides :FixWhitespace to fix it.
	Plug 'bronson/vim-trailing-whitespace'
" lean & mean status/tabline for vim that's light as air
	Plug 'vim-airline/vim-airline'
" Mathematica syntax highlighting (and more) for vim
	Plug 'rsmenon/vim-mathematica', { 'for': 'mma' }
" A command-line fuzzy finder
	Plug 'junegunn/fzf'
" fzf heart vim
	Plug 'junegunn/fzf.vim'
" Create your own text objects
	Plug 'kana/vim-textobj-user'
" Text objects for indented blocks of lines
	Plug 'kana/vim-textobj-indent'
" Text objects for entire buffer
	Plug 'kana/vim-textobj-entire'
" Text objects for the current line
	Plug 'kana/vim-textobj-line'
" Vim text objects for comments
	Plug 'glts/vim-textobj-comment'

call plug#end()

" Change <Leader> to <Space>
	let mapleader = " "
	nnoremap <Space> <Nop>

" Set background to dark
	set background=dark

" Populate airline fonts
	let g:airline_powerline_fonts = 1

" display line number of current line and relative line numbers
	set number relativenumber

" Indentation
	set autoindent smartindent

" Set tab and shift width to 4
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

" System clipboard mappings
	noremap	<Leader>y	"+y
	noremap	<Leader>p	"+p
	noremap	<Leader>Y	"*y
	noremap	<Leader>P	"*p

" Remap S to replace all in normal mode
	nnoremap	S	:%s//g<Left><Left>

" Split to the bottom and the right
	set splitbelow splitright

" Disable automatic comments on newlines
	autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

" Always display status line
	set laststatus=2

" Ensure .wl files are read with the mma filetype for the vim-mathematica syntax highlighting
	autocmd BufRead,BufNewFile *.wl set filetype=mma
