#include <macro.h>
/*
	File: fn_sellTurtle.sqf
	
	Description:
	Sells the turtles! Save the turtles!
	This was a super lazy thing to do but I just want to push it...
*/
private["_index","_price","_val"];
if(life_inv_turtle == 0) exitWith {
	titleText["Du hast keine Schildkr�ten, die du verkaufen k�nntest.","PLAIN"];
};

_index = ["turtle",__GETC__(sell_array)] call fnc_index;
_price = (__GETC__(sell_array) select _index) select 1;
_val = life_inv_turtle;
_price = _price * _val;

if([false,"turtle",life_inv_turtle] call life_fnc_handleInv) then {
	titleText[format["Du hast %1 Schildkr�te(n) f�r $%2 verkauft",_val,[_price] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _price;
};
