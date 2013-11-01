" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 1 November 2013

syn keyword basicLanguageKeywords .WORD .BLKW .EQU .CHAR .PAGE PSH POP CLR SET TAX TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS PSHA PSHX PSHF POPA POPX POPF ADA ADX ADS ADF SBA SBX SBS SBF MUL DIV MOD INC DEC NEG NEGA CMA CMX CMS CMF TST AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA JMP JSR INT RTN PC IRTN JEQ JNE JLT JGE JLE JGT JOV JNO LDC STC AOC SOJ BGN FIN INB INB OUTB OUTB INW OUTW SIE CIE NOP HLT 
syn match cuspComment '((^\s*;.*$)|(;[^\']*$))'
syn match cuspLabel '^\s*[A-Z][A-Z_0-9]*:'
syn match cuspQuote '[^;]*[^\']*'
syn match cuspNumber '(\b(\d+))|(\$[0-9A-Fa-f]+)'

let b:current_syntax = "cusp"

hi def link celTodo        Todo
hi def link cuspLabel      Statement
hi def link cuspMnemonic   Statement
hi def link cuspComment    Comment
hi def link cuspQuote      Constant
hi def link cuspNumber     Constant



