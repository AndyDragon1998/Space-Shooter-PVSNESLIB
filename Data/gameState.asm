.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __GameStart_locals 0
.define __GameUpdate_locals 0
.define __GameDraw_locals 0
.define __GameEnd_locals 0
.SECTION ".text_0x0" SUPERFREE
GameStart:
.ifgr __GameStart_locals 0
tsa
sec
sbc #__GameStart_locals
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
.ifgr __GameStart_locals 0
tsa
clc
adc #__GameStart_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x1" SUPERFREE
GameUpdate:
.ifgr __GameUpdate_locals 0
tsa
sec
sbc #__GameUpdate_locals
tas
.endif
.ifgr __GameUpdate_locals 0
tsa
clc
adc #__GameUpdate_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x2" SUPERFREE
GameDraw:
.ifgr __GameDraw_locals 0
tsa
sec
sbc #__GameDraw_locals
tas
.endif
.ifgr __GameDraw_locals 0
tsa
clc
adc #__GameDraw_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x3" SUPERFREE
GameEnd:
.ifgr __GameEnd_locals 0
tsa
sec
sbc #__GameEnd_locals
tas
.endif
.ifgr __GameEnd_locals 0
tsa
clc
adc #__GameEnd_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfileg0TkAV.data" APPENDTO "globram.data"
GameState dsb 20
.ENDS
.SECTION "tmpxfileg0TkAV.data" APPENDTO "glob.data"
.dw GameStart + 0, :GameStart
.dw GameUpdate + 0
.dw :GameUpdate
.dw GameDraw + 0
.dw :GameDraw
.dw GameEnd + 0
.dw :GameEnd
.db $0,$0,$0,$0
.ENDS
.SECTION ".rodata" SUPERFREE
__local_dummytmpxfileg0TkAV.rodata: .db 0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
__local_dummybss dsb 1
.ENDS
