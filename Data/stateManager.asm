.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __StateMachineStart_locals 4
.define __StateMachineChange_locals 8
.define __StateMachineUpdate_locals 4
.define __StateMachineDraw_locals 4
.SECTION ".text_0x0" SUPERFREE
StateMachineStart:
.ifgr __StateMachineStart_locals 0
tsa
sec
sbc #__StateMachineStart_locals
tas
.endif
lda 7 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_0
+
lda 3 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
__local_0:
brl __local_1
+
lda 3 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineStart_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #8
sta.b tcc__r0
stz.b tcc__r1
stz.b tcc__r1h
lda.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
lda 3 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineStart_locals + 1,s
sta.b tcc__r0h
lda.w #65535
sta.b [tcc__r0]
lda 5 + __StateMachineStart_locals + 1,s
sta.b tcc__r0h
lda 3 + __StateMachineStart_locals + 1,s
inc a
inc a
sta.b tcc__r0
lda.w #65535
sta.b tcc__r1
sta.b [tcc__r0]
lda 3 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineStart_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
lda 9 + __StateMachineStart_locals + 1,s
sta.b tcc__r1h
lda 7 + __StateMachineStart_locals + 1,s
sta.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
lda 3 + __StateMachineStart_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineStart_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -4 + __StateMachineStart_locals + 1,s
lda.b tcc__r1h
sta -2 + __StateMachineStart_locals + 1,s
lda -4 + __StateMachineStart_locals + 1,s
sta.b tcc__r9
lda -2 + __StateMachineStart_locals + 1,s
sta.b tcc__r9h
jsr.l tcc__jsl_ind_r9
__local_1:
.ifgr __StateMachineStart_locals 0
tsa
clc
adc #__StateMachineStart_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x1" SUPERFREE
StateMachineChange:
.ifgr __StateMachineChange_locals 0
tsa
sec
sbc #__StateMachineChange_locals
tas
.endif
lda 7 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_2
+
lda 3 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
__local_2:
brl __local_3
+
lda 3 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineChange_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #8
sta.b tcc__r0
stz.b tcc__r1
stz.b tcc__r1h
lda.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
lda 3 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineChange_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
clc
lda.b tcc__r1
adc.w #12
sta.b tcc__r1
sta -4 + __StateMachineChange_locals + 1,s
lda.b tcc__r1h
sta -2 + __StateMachineChange_locals + 1,s
lda -4 + __StateMachineChange_locals + 1,s
sta.b tcc__r9
lda -2 + __StateMachineChange_locals + 1,s
sta.b tcc__r9h
jsr.l tcc__jsl_ind_r9
lda 3 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineChange_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
lda 9 + __StateMachineChange_locals + 1,s
sta.b tcc__r1h
lda 7 + __StateMachineChange_locals + 1,s
sta.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
lda 3 + __StateMachineChange_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineChange_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -8 + __StateMachineChange_locals + 1,s
lda.b tcc__r1h
sta -6 + __StateMachineChange_locals + 1,s
lda -8 + __StateMachineChange_locals + 1,s
sta.b tcc__r9
lda -6 + __StateMachineChange_locals + 1,s
sta.b tcc__r9h
jsr.l tcc__jsl_ind_r9
__local_3:
.ifgr __StateMachineChange_locals 0
tsa
clc
adc #__StateMachineChange_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x2" SUPERFREE
StateMachineUpdate:
.ifgr __StateMachineUpdate_locals 0
tsa
sec
sbc #__StateMachineUpdate_locals
tas
.endif
lda 3 + __StateMachineUpdate_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_4
+
lda 3 + __StateMachineUpdate_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineUpdate_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
clc
lda.b tcc__r1
adc.w #4
sta.b tcc__r1
sta -4 + __StateMachineUpdate_locals + 1,s
lda.b tcc__r1h
sta -2 + __StateMachineUpdate_locals + 1,s
lda -4 + __StateMachineUpdate_locals + 1,s
sta.b tcc__r9
lda -2 + __StateMachineUpdate_locals + 1,s
sta.b tcc__r9h
jsr.l tcc__jsl_ind_r9
__local_4:
.ifgr __StateMachineUpdate_locals 0
tsa
clc
adc #__StateMachineUpdate_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x3" SUPERFREE
StateMachineDraw:
.ifgr __StateMachineDraw_locals 0
tsa
sec
sbc #__StateMachineDraw_locals
tas
.endif
lda 3 + __StateMachineDraw_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_5
+
lda 3 + __StateMachineDraw_locals + 1,s
sta.b tcc__r0
lda 5 + __StateMachineDraw_locals + 1,s
sta.b tcc__r0h
clc
lda.b tcc__r0
adc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
clc
lda.b tcc__r1
adc.w #8
sta.b tcc__r1
sta -4 + __StateMachineDraw_locals + 1,s
lda.b tcc__r1h
sta -2 + __StateMachineDraw_locals + 1,s
lda -4 + __StateMachineDraw_locals + 1,s
sta.b tcc__r9
lda -2 + __StateMachineDraw_locals + 1,s
sta.b tcc__r9h
jsr.l tcc__jsl_ind_r9
__local_5:
.ifgr __StateMachineDraw_locals 0
tsa
clc
adc #__StateMachineDraw_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfile8YsVXm.data" APPENDTO "globram.data"
__local_dummytmpxfile8YsVXm.data dsb 1
.ENDS
.SECTION "tmpxfile8YsVXm.data" APPENDTO "glob.data"
__local_dummytmpxfile8YsVXm.data: .db 0
.ENDS
.SECTION ".rodata" SUPERFREE
__local_dummytmpxfile8YsVXm.rodata: .db 0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
__local_dummybss dsb 1
.ENDS
