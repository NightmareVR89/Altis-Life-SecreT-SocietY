#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the invite process?
*/
private["_unit"];
disableSerialization;

if((lbCurSel 2632) == -1) exitWith {hint "Du musst jemanden auswählen, um ihn einzuladen!"};
_unit = call compile format["%1",getSelData(2632)];
if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint "Du kannst dich nicht selbst rauswerfen!"};
if(!isNil {(group _unit) getVariable "gang_name"}) exitWith {hint "Dieser Spieler ist schon in einer Gang!"};

if(count(grpPlayer getVariable ["gang_members",8]) == (grpPlayer getVariable ["gang_maxMembers",8])) exitWith {hint "Deine Gang hat die maximale Größe erreicht. Update bitte deine maximale Mitgliederzahl."};

_action = [
	format["Du bist dabei %1 in deine Gang einzuladen, wenn %1 annimmt, hat %1 Zugriff auf das Gangvermögen.",_unit getVariable ["realname",name _unit]],
	"Spieler einladen",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	[[profileName,grpPlayer],"life_fnc_gangInvite",_unit,false] spawn life_fnc_MP;
	_members = grpPlayer getVariable "gang_members";
	_members set[count _members,getPlayerUID _unit];
	grpPlayer setVariable["gang_members",_members,true];
	hint format["Du hast %1 eine Einladung in deine Gang geschickt",_unit getVariable["realname",name _unit]];
} else {
	hint "Einladung abgebrochen";
};