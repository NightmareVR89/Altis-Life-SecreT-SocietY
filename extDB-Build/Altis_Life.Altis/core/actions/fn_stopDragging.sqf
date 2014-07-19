/*
	File: fn_stopDragging.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit getVariable "dragging")) exitWith {};
detach _unit;
_unit setVariable["dragging",false,true];