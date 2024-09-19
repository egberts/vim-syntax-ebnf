

"function! s:DetectFiletype()
"if getline(1) =~# '^#!\s*\%\(/\S\+\)\?/\%\(s\)\?bin/\%\(env\s\+\)\?nft\>'
"        setfiletype ebnf
"    endif
"endfunction

augroup ebnf
    autocmd!
"    autocmd BufRead,BufNewFile * call s:DetectFiletype()
    autocmd BufRead,BufNewFile *.ebnf,*.bnf,*.ebnf-w3c setfiletype ebnf
augroup END
