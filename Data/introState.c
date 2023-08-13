/*****************************************************************************/
/*  Автор         		: Дракончик				                             */
/*  Приставка     		: Super Nintendo Entertainment System	             */
/*  Язык	      		: GNU TCC C                                          */
/*                                                                           */
/*  Содержимое файла	: Стадия логотипов			                         */
/*  Атрибут файла		: SOURCE                                             */
/*  Имя файла     		: introState.c	                                     */
/*                                                                           */
/*****************************************************************************/

#include <snes.h>

#include "include/gameState.h"
#include "include/menuState.h"
#include "include/overState.h"
#include "include/introState.h"

#include "extern/introState.ext"

extern StateMachine GameMachineState;

void IntroStart()
{
    // Copy tiles to VRAM
    bgInitTileSet(0, &IntroPic, &IntroPal, 0, (&IntroPic_end - &IntroPic), (&IntroPal_end - &IntroPal), BG_16COLORS, 0x4000);

    // Copy Map to VRAM
    bgInitMapSet(0, &IntroMap, (&IntroMap_end - &IntroMap), SC_32x32, 0x0000);

    // Now Put in 16 color mode and disable other BGs except 1st one
    setMode(BG_MODE1, 0);
    bgSetDisable(1);
    bgSetDisable(2);
    setScreenOn();
    consoleNocashMessage("Intro Start\n");

}

void IntroUpdate()
{
	consoleNocashMessage("Intro Update\n");
}

void IntroDraw()
{
	//WaitForVBlank();
}

void IntroEnd()
{

}

StateManager IntroState =
{
	IntroStart,
	IntroUpdate,
	IntroDraw,
	IntroEnd
};
