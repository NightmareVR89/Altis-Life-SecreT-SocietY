/*
	File: fn_dragAction.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
_unit attachTo [player,[0.15, 0.15, 0]];_unit setDir 180;
_unit setVariable["transporting",false,true];
_unit setVariable["dragging",true,true];
player reveal _unit;