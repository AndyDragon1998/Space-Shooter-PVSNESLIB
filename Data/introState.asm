.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __IntroStart_locals 0
.define __IntroUpdate_locals 0
.define __IntroDraw_locals 0
.define __IntroEnd_locals 0
.SECTION ".text_0x0" SUPERFREE
IntroStart:
.ifgr __IntroStart_locals 0
tsa
sec
sbc #__IntroStart_locals
tas
.endif
lda.w #:IntroPic_end
sta.b tcc__r0h
lda.w #IntroPic_end + 0
sta.b tcc__r0
lda.w #:IntroPic
lda.w #IntroPic + 0
sta.b tcc__r1
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
lda.w #:IntroPal_end
lda.w #IntroPal_end + 0
sta.b tcc__r1
lda.w #:IntroPal
lda.w #IntroPal + 0
sta.b tcc__r2
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
pea.w 16384
pea.w 16
pei (tcc__r1)
pei (tcc__r0)
sep #$20
lda #0
pha
rep #$20
pea.w :IntroPal
pea.w IntroPal + 0
pea.w :IntroPic
pea.w IntroPic + 0
sep #$20
lda #0
pha
rep #$20
jsr.l bgInitTileSet
tsa
clc
adc #18
tas
lda.w #:IntroMap_end
lda.w #IntroMap_end + 0
sta.b tcc__r0
lda.w #:IntroMap
lda.w #IntroMap + 0
sta.b tcc__r1
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
pea.w 0
sep #$20
lda #0
pha
rep #$20
pei (tcc__r0)
pea.w :IntroMap
pea.w IntroMap + 0
sep #$20
lda #0
pha
rep #$20
jsr.l bgInitMapSet
tsa
clc
adc #10
tas
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
jsr.l setScreenOn
pea.w :tccs_L.tmpxfileGY3eEe10
pea.w tccs_L.tmpxfileGY3eEe10 + 0
jsr.l consoleNocashMessage
tsa
clc
adc #4
tas
.ifgr __IntroStart_locals 0
tsa
clc
adc #__IntroStart_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x1" SUPERFREE
IntroUpdate:
.ifgr __IntroUpdate_locals 0
tsa
sec
sbc #__IntroUpdate_locals
tas
.endif
pea.w :tccs_L.tmpxfileGY3eEe11
pea.w tccs_L.tmpxfileGY3eEe11 + 0
jsr.l consoleNocashMessage
tsa
clc
adc #4
tas
.ifgr __IntroUpdate_locals 0
tsa
clc
adc #__IntroUpdate_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x2" SUPERFREE
IntroDraw:
.ifgr __IntroDraw_locals 0
tsa
sec
sbc #__IntroDraw_locals
tas
.endif
.ifgr __IntroDraw_locals 0
tsa
clc
adc #__IntroDraw_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x3" SUPERFREE
IntroEnd:
.ifgr __IntroEnd_locals 0
tsa
sec
sbc #__IntroEnd_locals
tas
.endif
.ifgr __IntroEnd_locals 0
tsa
clc
adc #__IntroEnd_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfileGY3eEe.data" APPENDTO "globram.data"
IntroState dsb 20
.ENDS
.SECTION "tmpxfileGY3eEe.data" APPENDTO "glob.data"
.dw IntroStart + 0, :IntroStart
.dw IntroUpdate + 0
.dw :IntroUpdate
.dw IntroDraw + 0
.dw :IntroDraw
.dw IntroEnd + 0
.dw :IntroEnd
.db $0,$0,$0,$0
.ENDS
.SECTION ".rodata" SUPERFREE
tccs_L.tmpxfileGY3eEe10: .db $49,$6e,$74,$72,$6f,$20,$53,$74,$61,$72,$74,$a,$0
tccs_L.tmpxfileGY3eEe11: .db $49,$6e,$74,$72,$6f,$20,$55,$70,$64,$61,$74,$65,$a,$0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
__local_dummybss dsb 1
.ENDS
