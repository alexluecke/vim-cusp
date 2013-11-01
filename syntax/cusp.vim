" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 1 November 2013

syn keyword basicLanguageKeywords .WORD .BLKW .EQU .CHAR .PAGE
syn keyword basicLanguageKeywords PSH POP CLR SET 
syn keyword basicLanguageKeywords TAX TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS 
syn keyword basicLanguageKeywords PSHA PSHX PSHF POPA POPX POPF 
syn keyword basicLanguageKeywords ADA ADX ADS ADF 
syn keyword basicLanguageKeywords SBA SBX SBS SBF 
syn keyword basicLanguageKeywords MUL DIV MOD INC DEC NEG NEGA 
syn keyword basicLanguageKeywords CMA CMX CMS CMF TST 
syn keyword basicLanguageKeywords AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA 
syn keyword basicLanguageKeywords JMP JSR INT RTN PC IRTN 
syn keyword basicLanguageKeywords JEQ JNE JLT JGE JLE JGT JOV JNO 
syn keyword basicLanguageKeywords LDC STC AOC SOJ BGN FIN 
syn keyword basicLanguageKeywords INB INB OUTB OUTB INW OUTW SIE CIE NOP HLT 

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



