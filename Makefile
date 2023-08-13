SRC := Data
include ${PVSNESLIB_HOME}/devkitsnes/snes_rules

.PHONY: bitmaps all

#---------------------------------------------------------------------------------
# ROMNAME is used in snes_rules file
export ROMNAME := SpaceShooterSNES

all: bitmaps $(ROMNAME).sfc

clean: cleanBuildRes cleanRom cleanGfx
	
#---------------------------------------------------------------------------------

pvsneslib.pic: Graphics/Images/pvsneslib.bmp
	@echo convert bitmap ... $(notdir $@)
	$(GFXCONV) -pc4 -n -gs8 -pe0 -po4 -fbmp -m $<
	
Title.pic: Graphics/Images/Title.bmp
	@echo convert bitmap ... $(notdir $@)
	$(GFXCONV) -pc4 -n -gs8 -pe0 -po4 -fbmp -m $<

Beginner.pic: Graphics/Images/Beginner.bmp
	@echo convert bitmap ... $(notdir $@)
	$(GFXCONV) -pc4 -n -gs8 -pe0 -po4 -fbmp -m $<

#Background.pic: Graphics/Background/BG.bmp
#	@echo convert bitmap ... $(notdir $@)
#	$(GFXCONV) -gs64 -pc16 -po16 -n $<
	
#Ship.pic: Graphics/Entities/Ship.bmp
#	@echo convert bitmap ... $(notdir $@)
#	$(GFXCONV) -gs64 -pc16 -po16 -n $<	

bitmaps : pvsneslib.pic Title.pic Beginner.pic 
#Background.pic Ship.pic
