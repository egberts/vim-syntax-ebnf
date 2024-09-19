" ebnf.vim - Syntax highlighting for EBNF

if exists("b:current_syntax")
  finish
endif

syntax clear

" Comments
syntax region ebnfComment start= "===" end= "===" contained
syntax region ebnfComment start= "#" end= "#" contained

" Identifiers
syntax match ebnfIdentifier /[a-z]\+\%(-[a-z]\+\)\?/

" Literals
syntax match ebnfCharacterLiteral /'\([^']\|\\.\)+'/ 
syntax match ebnfStringLiteral /"\([^"]\|\\.\)+"/ 

" Operators and special characters
syntax match ebnfOp "::="
syntax match ebnfOp "|" 
syntax match ebnfOp "?"
syntax match ebnfOp "\["
syntax match ebnfOp "]"
syntax match ebnfOp "("
syntax match ebnfOp ")"
syntax match ebnfOp "{"
syntax match ebnfOp "}"

" Link groups to colors
hi link ebnfComment Comment
hi link ebnfIdentifier Identifier
hi link ebnfCharacterLiteral Constant
hi link ebnfStringLiteral Constant
hi link ebnfOp Operator

let b:current_syntax = "ebnf"
