.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __main_locals 0
.SECTION ".text_0x0" SUPERFREE
main:
.ifgr __main_locals 0
tsa
sec
sbc #__main_locals
tas
.endif
jsr.l consoleInit
pea.w :IntroState
pea.w IntroState + 0
pea.w :GameMachineState
pea.w GameMachineState + 0
jsr.l StateMachineStart
tsa
clc
adc #8
tas
__local_0:
pea.w :GameMachineState
pea.w GameMachineState + 0
jsr.l StateMachineUpdate
tsa
clc
adc #4
tas
pea.w :GameMachineState
pea.w GameMachineState + 0
jsr.l StateMachineDraw
tsa
clc
adc #4
tas
bra __local_0
lda.w #0
sta.b tcc__r0
__local_1:
.ifgr __main_locals 0
tsa
clc
adc #__main_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfilesCjM1w.data" APPENDTO "globram.data"
__local_dummytmpxfilesCjM1w.data dsb 1
.ENDS
.SECTION "tmpxfilesCjM1w.data" APPENDTO "glob.data"
__local_dummytmpxfilesCjM1w.data: .db 0
.ENDS
.SECTION ".rodata" SUPERFREE
__local_dummytmpxfilesCjM1w.rodata: .db 0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
GameMachineState dsb 12
.ENDS
