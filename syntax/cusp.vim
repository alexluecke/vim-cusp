" Vim syntax file
" Language: CUSP
" Maintainer: Alex Luecke 
" Latest Revision: 1 November 2013

"let Mnems = split ("LDA LDX LDS LDF STA STX STS STF PSH POP CLR SET TAX TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS PSHA PSHX PSHF POPA POPX POPF ADA ADX ADS ADF SBA SBX SBS SBF MUL DIV MOD INC DEC NEG NEGA CMA CMX CMS CMF TST AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA JMP JSR INT RTN IRTN JEQ JNE JLT JGE JLE JGT JOV JNO LDC STC AOC SOJ BGN FIN INB INB OUTB INW OUTW SIE CIE NOP HLT")

syn keyword basicWords .WORD .BLKW .EQU .CHAR .PAGE .word .blkw .equ .char .page nextgroup=cuspAll skipwhite

syn keyword cuspMnemUp LDA LDX LDS LDF STA STX STS STF PSH POP CLR SET TAX TAS TAF TXA TXS TXF TSA TSX TSF TFA TFX TFS PSHA PSHX PSHF POPA POPX POPF ADA ADX ADS ADF SBA SBX SBS SBF MUL DIV MOD INC DEC NEG NEGA CMA CMX CMS CMF TST AND OR XOR COM SHRA SHLA RTRA RTLA RROA RLOA JMP JSR INT RTN IRTN JEQ JNE JLT JGE JLE JGT JOV JNO LDC STC AOC SOJ BGN FIN INB INB OUTB INW OUTW SIE CIE NOP HLT nextgroup=cuspAll skipwhite

syn keyword cuspMnemLow lda ldx lds ldf sta stx sts stf psh pop clr set tax tas taf txa txs txf tsa tsx tsf tfa tfx tfs psha pshx pshf popa popx popf ada adx ads adf sba sbx sbs sbf mul div mod inc dec neg nega cma cmx cms cmf tst and or xor com shra shla rtra rtla rroa rloa jmp jsr int rtn irtn jeq jne jlt jge jle jgt jov jno ldc stc aoc soj bgn fin inb inb outb inw outw sie cie nop hlt nextgroup=cuspAll skipwhite

syn match cuspAll '[\s]*[A-Z0-9a-z]*'
syn match cuspComment ';.*$'
syn match cuspLabel '^[\s]*[A-Za-z][a-zA-Z_0-9]*:'
syn match cuspNumber '\d\+\|\$[0-9A-Fa-f]\+'
syn match cuspQuote '\'[^\']*\''
syn match cuspEqu '\.[Ee][Qq][Uu].*,'

let b:current_syntax = "cusp"

hi basicWords   ctermfg=108
hi cuspEqu      ctermfg=150
hi cuspMode     ctermfg=Blue
hi cuspMnemUp   ctermfg=Blue
hi cuspMnemLow  ctermfg=Blue
hi cuspLabel    ctermfg=Yellow
hi cuspComment  ctermfg=Red
hi cuspNumber   ctermfg=214
hi cuspQuote    ctermfg=Grey
