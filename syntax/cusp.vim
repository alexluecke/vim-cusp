" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 1 November 2013

syn keyword basicLanguageKeywords .WORD .BLKW .EQU .CHAR .PAGE
syn match cuspComment '((^\\s*;.*$)|(;[^\']*$))'
syn match cuspLabel '^\\s*[A-Z][A-Z_0-9]*:'
syn match cuspQuote '[^\']*'
syn match cuspNumber '\\b(\\d+)|(\\$[0-9A-Fa-f]+)'

let b:current_syntax = "cusp"

hi def link celTodo        Todo
hi def link cuspLabel      Statement
hi def link cuspComment    Comment
hi def link cuspQuote      Constant
hi def link cuspNumber     Constant
