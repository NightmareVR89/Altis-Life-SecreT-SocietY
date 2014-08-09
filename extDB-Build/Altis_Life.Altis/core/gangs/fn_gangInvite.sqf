#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Prompts the player about an invite.
*/
private["_name","_group"];
_name = [_this,0,"",[""]] call BIS_fnc_param;
_group = [_this,1,grpNull,[grpNull]] call BIS_fnc_param;
if(_name == "" OR isNull _group) exitWith {}; //Fail horn anyone?
if(!isNil {(group _unit) getVariable "gang_name"}) exitWith {hint "Dieser Spieler ist schon in einer Gang!"}; 

_gangName = _group getVariable "gang_name";
_action = [
	format["%1 hat dich eingeladen der Gang: ' %2 ' beizutreten.<br/>Wenn du die Einladung annimmst, wirst du Teil der Gang und hast Zugriff auf deren Vermögen und kontrolliertes Territorium.",_name,_gangName],
	"Gangeinladung",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	[player] join _group;
	[[4,_group],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
} else {
	_grpMembers = grpPlayer getVariable "gang_members";
	_grpMembers = _grpMembers - [steamid];
	grpPlayer setVariable["gang_members",_grpMembers,true];
	[[4,_grpMembers],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
};