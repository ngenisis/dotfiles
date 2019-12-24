" Adapted from https://github.com/freitass/todo.txt-vim
if exists("b:current_snytax")
	finish
endif

syntax match TodoDone		'^x\s.\+$'
syntax match TodoPriority	'^([A-Z])\s'
syntax match TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}' contains=NONE
syntax match TodoProject    '\(^\|\W\)+[^[:blank:]]\+'  contains=NONE
syntax match TodoContext    '\(^\|\W\)@[^[:blank:]]\+'  contains=NONE
syntax match TodoMetadata	'[^+@\s]\+:[^\s]\+'			contains=NONE

highlight default link TodoDone		Comment
highlight default link TodoPriority	Constant
highlight default link TodoDate		Todo
highlight default link TodoProject	Identifier
highlight default link TodoContext	Type
highlight default link TodoMetadata	Statement

let b:current_syntax = "todo"
" vim: tabstop=4 softtabstop=4 shiftwidth=4
