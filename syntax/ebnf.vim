" ebnf.vim - Syntax highlighting for EBNF

if exists("b:current_syntax")
  finish
endif

syntax clear

" most relaxed patterns goes here, ie., EOF, comments
"syn match EOF /^./
"hi link   opt_newline PreProc
"syn match opt_newline "\v[\n]*" skipwhite contained


" Comments
syntax cluster ebnfComment contains=ebnfCommentW3C,ebnfCommentISO,ebnfCommentUnknown
syntax region ebnfCommentW3C start="\/\*" end="\*\/" skipwhite skipnl contained  " W3C
syntax region ebnfCommentISO start= "#" end= "#" skipwhite contained  " ISO-EBNF
syntax region ebnfCommentUnknown start= "===" end= "===" skipwhite contained

" Identifiers, usually all lowercase
" syntax match ebnfIdentifier /[a-z0-9\_]\+\%(-[a-z0-9\_]\+\)\?/ skipwhite contained
syntax match ebnfIdentifier /\v[a-z][a-z0-9\_]{1,63}/ skipwhite contained
\ nextgroup=ebnfAssignment
syntax match ebnfSymbol /\v[A-Z][A-Z0-9\_]{1,63}/ skipwhite contained
\ nextgroup=ebnfAssignment

" Literals
syntax match ebnfCharacterLiteral /'\([^']\|\\.\)+'/ contained
syntax match ebnfStringLiteral /"\([^"]\|\\.\)+"/ contained

" Operators and special characters
syntax match ebnfAssignment "::=" skipwhite contained
syntax match ebnfOp /|/ contained
syntax match ebnfOp /?/ contained
syntax match ebnfOp "\[" contained
syntax match ebnfOp "]" contained
syntax match ebnfOp /(/ contained
syntax match ebnfOp /)/ contained
syntax match ebnfOp /{/ contained
syntax match ebnfOp /}/ contained

" search over first-char-line and  all lines with first-blanks
                  "\v^[^\r^\n]+"  " forced first non-blank char in a line
                  "[A-Za-z0-9\_]+"  " identifier/symbols
                  "\s+.+$"  " continued line, first-char is whitespace
"syntax match line "^[\n]+[^\nA-Za-z][^\nA-Za-z0-9]+"
"
hi link      multiline_statement Normal
syntax region multiline_statement start=/\n\w/ end="^([\s]{0,16})(.*)(?=([\w\S\s\n]+))" skipnl skipwhite 
\ contains=ebnfComment,ebnfCommentW3C,ebnfCommentISO,ebnfCommentUnknown,ebnfAssignment,ebnfIdentifier,ebnfSymbol
"\ contains=ebnfComment,ebnfCommentW3C,ebnfCommentOther,ebnfCommentUnknown,ebnfIdentifier

"hi link   multiline Error
"syn match multiline '\v^[\n]*'
"\ nextgroup=
"\    multiline_statement,
"\    @ebnfComment


" Link groups to colors
hi link ebnfSymbol Symbol
hi link ebnfIdentifier PreProc
hi link ebnfCommentW3C Comment
hi link ebnfCommentISO Comment
hi link ebnfCommentUnknown Comment
hi link ebnfCharacterLiteral Constant
hi link ebnfStringLiteral Constant
hi link ebnfOp Delimiter
hi link ebnfAssignment Operator

let b:current_syntax = "ebnf"
