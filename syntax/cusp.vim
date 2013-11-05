" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 4 November 2013

if exists("b:current_syntax")
        finish
endif

syn case ignore 

syn match cuspAll '[\s]*[A-Z0-9a-z]*'
syn match cuspFrame '[!]*'
syn keyword cuspMnem LDA LDX LDS LDF STA STX STS STF PSH POP CLR SET TAX
\ TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS PSHA PSHX PSHF POPA POPX POPF ADA
\ ADX ADS ADF SBA SBX SBS SBF MUL DIV MOD INC DEC NEG NEGA CMA CMX CMS CMF TST
\ AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA JMP JSR INT  JEQ JNE JLT
\ JGE JLE JGT JOV JNO LDC STC AOC SOJ  INB INB OUTB INW OUTW SIE CIE NOP
\ HLT nextgroup=cuspModes skipwhite
syn keyword BgnFinBlock BGN FIN RTN IRTN nextgroup=cuspModes skipwhite
syn match cuspModes '[#\*+]*' nextgroup=cuspFrame skipwhite
syn match cuspBasic '\.\(WORD\|BLKW\|EQU\|CHAR\|PAGE\)'
syn match cuspComment ';.*$'
syn match cuspLabel '^[\s]*[A-Za-z][a-zA-Z_0-9]*:'
syn match cuspQuote '\'[^\']*\''
" syn match cuspNumber '\d\+\|\$[0-9A-Fa-f]\+'

let b:current_syntax = "cusp"

" hi cuspNumber ctermfg=31
hi BgnFinBlock ctermfg=31
hi cuspLabel ctermfg=161
hi cuspBasic ctermfg=166
hi cuspEqu ctermfg=160
hi cuspModes ctermfg=25
hi cuspFrame ctermfg=24
hi cuspMnem ctermfg=25
hi cuspComment ctermfg=Grey
hi cuspQuote ctermfg=31
