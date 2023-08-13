.include "hdr.asm"

.section ".rodata1" superfree

;Folowing list is graphical data used for the game.

IntroPic:
.incbin "Graphics/Images/pvsneslib.pic"
IntroPic_end:


.ends

.section ".rodata2" superfree

IntroMap:
.incbin "Graphics/Images/pvsneslib.map"
IntroMap_end:

IntroPal: 
.incbin "Graphics/Images/pvsneslib.pal"
IntroPal_end:

.ends
