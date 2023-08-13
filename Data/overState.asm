.include "hdr.asm"
.accu 16
.index 16
.16bit
.define __OverStart_locals 0
.define __OverUpdate_locals 0
.define __OverDraw_locals 0
.define __OverEnd_locals 0
.SECTION ".text_0x0" SUPERFREE
OverStart:
.ifgr __OverStart_locals 0
tsa
sec
sbc #__OverStart_locals
tas
.endif
.ifgr __OverStart_locals 0
tsa
clc
adc #__OverStart_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x1" SUPERFREE
OverUpdate:
.ifgr __OverUpdate_locals 0
tsa
sec
sbc #__OverUpdate_locals
tas
.endif
.ifgr __OverUpdate_locals 0
tsa
clc
adc #__OverUpdate_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x2" SUPERFREE
OverDraw:
.ifgr __OverDraw_locals 0
tsa
sec
sbc #__OverDraw_locals
tas
.endif
.ifgr __OverDraw_locals 0
tsa
clc
adc #__OverDraw_locals
tas
.endif
rtl
.ENDS
.SECTION ".text_0x3" SUPERFREE
OverEnd:
.ifgr __OverEnd_locals 0
tsa
sec
sbc #__OverEnd_locals
tas
.endif
.ifgr __OverEnd_locals 0
tsa
clc
adc #__OverEnd_locals
tas
.endif
rtl
.ENDS
.RAMSECTION "ramtmpxfilekNoqe5.data" APPENDTO "globram.data"
OverState dsb 20
.ENDS
.SECTION "tmpxfilekNoqe5.data" APPENDTO "glob.data"
.dw OverStart + 0, :OverStart
.dw OverUpdate + 0
.dw :OverUpdate
.dw OverDraw + 0
.dw :OverDraw
.dw OverEnd + 0
.dw :OverEnd
.db $0,$0,$0,$0
.ENDS
.SECTION ".rodata" SUPERFREE
__local_dummytmpxfilekNoqe5.rodata: .db 0
.ENDS


.RAMSECTION ".bss" BANK $7e SLOT 2
__local_dummybss dsb 1
.ENDS
