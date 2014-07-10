/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText["Sie hatten kein Bargeld dabei..","PLAIN"]};

life_cash = life_cash + _cash;
titleText[format["Du hast $%1 gestolen",[_cash] call life_fnc_numberText],"PLAIN"];