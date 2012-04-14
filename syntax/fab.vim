" Vim syntax file
" Language   : fab
" Maintainers: Jeff Lavallee

if exists("b:current_syntax")
  finish
endif

" fab keywords
syn keyword fabKeyword by do exit for loop of read return to while write
syn keyword fabConditional else elsif if then
syn keyword fabFunction func
syn keyword fabStorageClass extends
syn keyword fabRecord record

syn keyword fabOperator div mod or and not
syn match fabOperator "\%([-+\*/]\|:=\)"

syn keyword fabType real integer boolean unit
" TODO: handle array type expressions

syn keyword fabVar var nextgroup=fabVarName skipwhite
syn keyword fabVar const nextgroup=fabVarName skipwhite
syn match fabVarName "[a-zA-Z][a-zA-Z0-9]*" contained

" boolean literals
syn keyword fabBoolean true false

syn match fabTodo "[tT][oO][dD][oO]" contained
syn region fabComment start="\[\*" end="\*\]" contains=fabTodo

syn region fabString start="\"" end="\""

" number literals
syn match fabInteger "\<\d\+\>"
syn match fabReal "\<\d\+\.\d\*\>"

" map fab groups to standard groups
hi link fabFunction Function
hi link fabRecord Typedef
hi link fabStorageClass StorageClass
hi link fabOperator Operator
hi link fabType Type
hi link fabConditional Keyword
hi link fabKeyword Keyword
hi link fabReal Float
hi link fabInteger Number
hi link fabString String
hi link fabBoolean Boolean
hi link fabComment Comment
hi link fabTodo Todo
hi link fabVar Keyword
hi link fabVarName Identifier

let b:current_syntax = "fab"

