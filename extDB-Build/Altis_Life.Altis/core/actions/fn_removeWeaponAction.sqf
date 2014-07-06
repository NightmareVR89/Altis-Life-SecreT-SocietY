/*
	File: fn_removeWeaponAction.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Desc:
	Search for weapons
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
hint "Searching for Weapons...";
sleep 2;
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Cannot search that person."};
[[player],"life_fnc_removeWeapons",_unit,false] spawn life_fnc_MP;
hint format["You have seized %1's weapons",_unit getVariable["realname",name _unit]];
life_action_inUse = true;