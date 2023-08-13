.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __MenuStart_locals 0
.define __MenuUpdate_locals 0
.define __MenuDraw_locals 0
.define __MenuEnd_locals 0
.SECTION ".text_0x0" SUPERFREE
MenuStart:
.ifgr __MenuStart_locals 0
tsa
sec
sbc #__MenuStart_locals
tas
.endif
pea.w (0 * 256 + 1)
sep #$20
rep #$20
jsr.l setMode
pla
sep #$20
lda #1
pha
rep #$20
jsr.l bgSetDisable
tsa
clc
adc #1
tas
sep #$20
lda #2
pha
rep #$20
jsr.l bgSetDisable
tsa
clc
adc #1
tas
.ifgr __MenuStart_locals 0
tsa
clc
adc #__MenuStart_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x1" SUPERFREE
MenuUpdate:
.ifgr __MenuUpdate_locals 0
tsa
sec
sbc #__MenuUpdate_locals
tas
.endif
.ifgr __MenuUpdate_locals 0
tsa
clc
adc #__MenuUpdate_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x2" SUPERFREE
MenuDraw:
.ifgr __MenuDraw_locals 0
tsa
sec
sbc #__MenuDraw_locals
tas
.endif
.ifgr __MenuDraw_locals 0
tsa
clc
adc #__MenuDraw_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x3" SUPERFREE
MenuEnd:
.ifgr __MenuEnd_locals 0
tsa
sec
sbc #__MenuEnd_locals
tas
.endif
.ifgr __MenuEnd_locals 0
tsa
clc
adc #__MenuEnd_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfile3Y1tlK.data" APPENDTO "globram.data"
MenuState dsb 20
.ENDS
.SECTION "tmpxfile3Y1tlK.data" APPENDTO "glob.data"
.dw MenuStart + 0, :MenuStart
.dw MenuUpdate + 0
.dw :MenuUpdate
.dw MenuDraw + 0
.dw :MenuDraw
.dw MenuEnd + 0
.dw :MenuEnd
.db $0,$0,$0,$0
.ENDS
.SECTION ".rodata" SUPERFREE
__local_dummytmpxfile3Y1tlK.rodata: .db 0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
__local_dummybss dsb 1
.ENDS
