set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle, the plug-in manager for Vim
Plugin 'VundleVim/Vundle.vim'
" A Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" enable repeating supported plugin maps with .
Plugin 'tpope/vim-repeat'
" comment stuff out
Plugin 'tpope/vim-commentary'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" Pairs of handy bracket mappings
Plugin 'tpope/vim-unimpaired'
" Defaults everyone can agree on
Plugin 'tpope/vim-sensible'
" Helpers for UNIX
Plugin 'tpope/vim-eunuch'
" Highlights trailing whitespace in read and provides :FixWhitespace to fix it.
Plugin 'bronson/vim-trailing-whitespace'
" Zoom in/out of windows (toggle between one window and multi-window)
Plugin 'ZoomWin'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
" Mathematica syntax highlighting (and more) for vim
Plugin 'rsmenon/vim-mathematica'
" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-line'
Plugin 'glts/vim-textobj-comment'
" Plugin 'airodactyl/neovim-ranger'
" Plugin 'Mizuchi/vim-ranger'
" Plugin 'kassio/neoterm'

call vundle#end()
filetype plugin indent on

" Change <Leader> to <Space>
let mapleader = " "

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

" Shortcuts for switching between splits
map	<C-h>	<C-w>h
map	<C-j>	<C-w>j
map	<C-k>	<C-w>k
map	<C-l>	<C-w>l
map	<C-o>	<C-w>o

" Shortcuts for tabs
nnoremap	tn	:tabnew<Enter>
nnoremap	tc	:tabclose<Enter>

" Bind <Caps> to <Esc>
" I usually do this at the OS level, but just in case
noremap		<Caps>	<Esc>
noremap!	<Caps>	<Esc>

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
