setlocal commentstring=\(*%s*\)
" TODO revert inoremap
inoremap <buffer> $$ \[Formal]<Esc>i
inoremap <buffer> $$$ \[FormalCapital]<Esc>i
let g:mma_candy = 1

let b:undo_ftplugin = "|setlocal commentstring<"
