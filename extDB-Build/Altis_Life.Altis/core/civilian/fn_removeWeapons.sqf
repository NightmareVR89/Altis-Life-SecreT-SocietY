/*
	Author: Tobias 'Xetoxyc' Sittenauer

	File: fn_removeWeapons.sqf
*/

private["_cop"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(_cop == player) then {}; //WTF?

if(isNull _cop OR !(player getVariable["restrained",FALSE])) exitWith {}; //Error check?

removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

hint format["Ihre Waffen wurden beschlagnahmt"];