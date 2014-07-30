#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint "Du hast hier nichts verloren!";};

createDialog "RscDisplayDebugPublic";
[[0,format["Der Admin %1 hat die Debug Console geöffnet.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;