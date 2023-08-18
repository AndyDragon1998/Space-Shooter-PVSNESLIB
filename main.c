/*****************************************************************************/
/*  Автор         		: Дракончик				                             */
/*  Приставка     		: Super Nintendo Entertainment System	             */
/*  Язык	      		: GNU TCC C                                          */
/*                                                                           */
/*  Содержимое файла	: Главный Cи файл			                         */
/*  Атрибут файла		: SOURCE                                             */
/*  Имя файла     		: main.c	                                         */
/*                                                                           */
/*****************************************************************************/

#include <snes.h>

#include "Data/include/introState.h"
#include "Data/include/menuState.h"
#include "Data/include/gameState.h"
#include "Data/include/overState.h"

// The State Machie
StateMachine GameMachineState;

int main(void)
{
    // Initialize SNES
    consoleInit();

	StateMachineStart(&GameMachineState, &IntroState);

    while (1)
    {
        
        StateMachineUpdate(&GameMachineState);
		
		StateMachineDraw(&GameMachineState);
		
		
        
    }
    return 0;
}
