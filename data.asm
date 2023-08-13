.include "hdr.asm"

.section ".rodata1" superfree

;Folowing list is graphical data used for the game.

IntroPic:
.incbin "Graphics/Images/pvsneslib.pic"
IntroPic_end:

IntroMap:
.incbin "Graphics/Images/pvsneslib.map"
IntroMap_end:

IntroPal: 
.incbin "Graphics/Images/pvsneslib.pal"
IntroPal_end:

TitlePic:
.incbin "Graphics/Images/Title.pic"
TitlePic_end:

TextyPic:
.incbin "Graphics/Images/Beginner.pic"
TextyPic_end:


.ends
