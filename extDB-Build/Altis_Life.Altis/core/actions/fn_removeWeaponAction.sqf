/*
	File: fn_removeWeaponAction.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Desc:
	Search for weapons
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
hint "Suche nach Waffen...";
sleep 2;
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Diese Person kann nicht durchsucht werden."};
[[player],"life_fnc_removeWeapons",_unit,false] spawn life_fnc_MP;
hint format["Du hast %1's Waffen beschlagnahmt",_unit getVariable["realname",name _unit]];
life_action_inUse = true;