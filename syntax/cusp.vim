" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 1 November 2013
" PSH POP CLR SET TAX TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS PSHA PSHX PSHF POPA POPX POPF ADA ADX ADS ADF SBA SBX SBS SBF MUL DIV MOD INC DEC NEG NEGA CMA CMX CMS CMF TST AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA JMP JSR INT RTN PC IRTN JEQ JNE JLT JGE JLE JGT JOV JNO LDC STC AOC SOJ BGN FIN INB INB OUTB OUTB INW OUTW SIE CIE NOP HLT 

" This creates a keyword ERROR and puts it in the highlight group called
" logError
" :syn keyword logError ERROR
" " This creates a match on the date and puts in the highlight group called
" logDate.  The
" " nextgroup and skipwhite makes vim look for logTime after the match
" :syn match logDate /^\d\{4}-\d\{2}-\d\{2}/ nextgroup=logTime skipwhite
"
" " This creates a match on the time (but only if it follows the date)
" :syn match logTime /\d\{2}:\d\{2}:\d\{2},\d\{3}/
"
" " Now make them appear:
" " Link just links logError to the colouring for error
" hi link logError Error
" " Def means default colour - colourschemes can override
" hi def logDate guibg=yellow guifg=blue
" hi def logTime guibg=green guifg=white

syn keyword basicLanguageKeywords .WORD .BLKW .EQU .CHAR .PAGE
" syn match cuspComment ';.*$'
" syn match cuspLabel '^\s*[A-Z][A-Z_0-9]*:'
" syn match cuspQuote '[^\']*'
" syn match cuspNumber '\<(\d\+)\>\|(\$[0-9A-Fa-f]+)'
" syn match cuspParam '[A-Z]\+[#\*+]*[ !]*[\s]\+'

let b:current_syntax = "cusp"

hi def cuspLabel        guifg=yellow
hi def cuspMnemonic     guifb=blue
hi def cuspComment      guifb=grey
hi def cuspQuote        guifb=white
hi def cuspNumber       guifb=white



