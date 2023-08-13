/*****************************************************************************/
/*  Автор         		: Дракончик				                             */
/*  Приставка     		: Super Nintendo Entertainment System	             */
/*  Язык	      		: GNU TCC C                                          */
/*                                                                           */
/*  Содержимое файла	: Стадия завершение Игри	                         */
/*  Атрибут файла		: SOURCE                                             */
/*  Имя файла     		: overState.c	                                     */
/*                                                                           */
/*****************************************************************************/

#include "include/gameState.h"
#include "include/menuState.h"
#include "include/overState.h"
#include "include/introState.h"

extern StateMachine GameMachineState;

void OverStart()
{

}

void OverUpdate()
{

}

void OverDraw()
{

}

void OverEnd()
{

}

StateManager OverState =
{
	OverStart,
	OverUpdate,
	OverDraw,
	OverEnd
};
