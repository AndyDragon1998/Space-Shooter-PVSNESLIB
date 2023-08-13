SRC := Data
include ${PVSNESLIB_HOME}/devkitsnes/snes_rules

.PHONY: bitmaps all

#---------------------------------------------------------------------------------
# ROMNAME is used in snes_rules file
export ROMNAME := SpaceShooterSNES

all: bitmaps $(ROMNAME).sfc

clean: cleanBuildRes cleanRom cleanGfx
	
#---------------------------------------------------------------------------------


bitmaps : Graphics/Images/pvsneslib.pic Graphics/Images/Title.pic Graphics/Images/Beginner.pic 
#Background.pic Ship.pic
