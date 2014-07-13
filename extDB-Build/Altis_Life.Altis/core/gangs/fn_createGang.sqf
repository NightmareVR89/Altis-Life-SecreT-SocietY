#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Pulls up the menu and creates the gang?
*/
private["_gangName","_length","_badChar","_chrByte","_allowed"];
disableSerialization;

_gangName = ctrlText (getControl(2520,2522));
_length = count (toArray(_gangName));
_chrByte = toArray (_gangName);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ ");
if(_length > 32) exitWith {hint "Dein Gangname darf nicht mehr als 25 Zeichen enthalten."};
_badChar = false;
{if(!(_x in _allowed)) exitWith {_badChar = true;};} foreach _chrByte;
if(_badChar) exitWith {hint "Du hast ungültige Zeichen in deinem Gangnamen. Er darf nur Ziffern, Buchstaben und Unterstriche enthalten";};
if(life_atmcash < (__GETC__(life_gangPrice))) exitWith {hint format["Du hast nicht genug Geld auf deinem Bankkonto.\n\nDir fehlen: $%1",[((__GETC__(life_gangPrice))-life_atmcash)] call life_fnc_numberText];};

[[player,getPlayerUID player,_gangName],"TON_fnc_insertGang",false,false] spawn life_fnc_MP;
hint "Sende Informationen an den Server, bitte warten.....";
closeDialog 0;
life_action_gangInUse = true;