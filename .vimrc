set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tmhedberg/matchit'
Plugin 'ZoomWin'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-unimpaired'
Plugin 'rsmenon/vim-mathematica'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

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

" NERDTree keybinds
map <C-n> :NERDTreeToggle<CR>

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
