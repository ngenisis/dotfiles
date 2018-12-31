set nocompatible

" Download vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()

Plug 'VundleVim/Vundle.vim' " Vundle, the plug-in manager for Vim
Plug 'tpope/vim-fugitive' " A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with .
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'tpope/vim-unimpaired' " Pairs of handy bracket mappings
Plug 'tpope/vim-sensible' " Defaults everyone can agree on
Plug 'tpope/vim-eunuch' " Helpers for UNIX
Plug 'bronson/vim-trailing-whitespace' " Highlights trailing whitespace in read and provides :FixWhitespace to fix it.
Plug 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plug 'rsmenon/vim-mathematica' " Mathematica syntax highlighting (and more) for vim
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder.
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
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

" Hard mode
" Arrow keys still work in command mode
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

" Custom window mappings

" <C-h>, <C-j>, <C-k>, and <C-l> move windows
noremap	<C-h>	<C-w>h
noremap	<C-j>	<C-w>j
noremap	<C-k>	<C-w>k
noremap	<C-l>	<C-w>l

" <C-q> to close a window
noremap	<C-q>	<C-w>q

" <C-w>n opens a new window
" <C-n> opens a new window, but split vertically
noremap	<C-n>	<C-\><C-n>:vnew<Enter>

" Shortcuts for tabs
nnoremap	tn	:tabnew<Enter>
nnoremap	tc	:tabclose<Enter>

" Disable automatic comments on newlines
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

" Always display status line
set laststatus=2

" Ensure .wl files are read with the mma filetype for the vim-mathematica syntax highlighting
autocmd BufRead,BufNewFile *.wl set filetype=mma

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = 'ag %s -f -l --hidden --ignore .git -g ""'
