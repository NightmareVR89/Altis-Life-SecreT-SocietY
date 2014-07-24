/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["hostage",FALSE])) exitWith {}; //Error check?

_unit setVariable["hostage",FALSE,TRUE];
detach _unit;

[[0,format["%1 wurde wieder freigelassen",_unit getVariable["realname",name _unit]]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;