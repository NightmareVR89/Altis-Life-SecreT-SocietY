/*
	File: fn_rechnungAction.sqf
	Based on: fn_ticketAction
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the ticketing process.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
disableSerialization;
if(!(createDialog "life_rechnung_give")) exitWith {hint "Konnte das Rechnungsinterface nicht laden"};
if(isNull _unit OR !isPlayer _unit) exitwith {};
ctrlSetText[2651,format["Stelle Rechnung an %1 aus",_unit getVariable["realname",name _unit]]];
life_rechnung_unit = _unit;