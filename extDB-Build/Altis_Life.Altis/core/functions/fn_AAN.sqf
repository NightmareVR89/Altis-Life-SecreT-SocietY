/*
	fn_AAN.sqf
	Author: NiGhTm4r3
	Description:
	Creates AAN Display, sends Newsbulletin and closes the Display...
*/
private["_display","_message","_headline","_title","_scroll"];
disableSerialization;
_headline = _this select 0;
_message = _this select 1;
_title = parseText format["<t size='2'>Aktuelle Sondermeldung</t><br />%1",_headline];
_scroll = parseText format["<t size='1.4'>%1</t>",_message];
[_title,_scroll] spawn BIS_fnc_AAN;
sleep 70;
_display = uinamespace getvariable "BIS_AAN";
_display closeDisplay 0;