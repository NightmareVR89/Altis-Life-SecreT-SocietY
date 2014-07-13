/*
	File: fn_rechnungPrompt.sqf
	Based on: fn_ticketPrompt.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the player that he is being ticketed.
*/
private["_adac","_val","_display","_control"];
if(!isNull (findDisplay 2600)) exitwith {}; //Already at the ticket menu, block for abuse?
_adac = _this select 0;
if(isNull _adac) exitWith {};
_val = _this select 1;

createDialog "life_rechnung_pay";
disableSerialization;
waitUntil {!isnull (findDisplay 2600)};
_display = findDisplay 2600;
_control = _display displayCtrl 2601;
life_rechnung_paid = false;
life_rechnung_val = _val;
life_rechnung_adac = _adac;
_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>%1 hat dir eine Rechnung über $%2 ausgestellt",_adac getVariable["realname",name _adac],_val];

[] spawn
{
	disableSerialization;
	waitUntil {life_rechnung_paid OR (isNull (findDisplay 2600))};
	if(isNull (findDisplay 2600) && !life_rechnung_paid) then
	{
		[[0,format["%1 lehnt die Bezahlung der Rechnung ab.",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		[[1,format["%1 lehnt die Bezahlung der Rechnung ab.",profileName]],"life_fnc_broadcast",life_rechnung_adac,false] spawn life_fnc_MP;
	};
};