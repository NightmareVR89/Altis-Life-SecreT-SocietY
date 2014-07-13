#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Prompts the user about disbanding the gang and if the user accepts the gang will be
	disbanded and removed from the database.
*/
private["_action"];

_action = [
	"Du bist dabei deine Gang aufzulösen, mit der Auflösung wird die Gang aus der Datenbank gelöscht und existiert nicht mehr.<br/><br/>Bist du dir wirklich sicher, dass du die Gang auflösen willst? Du bekommst den Preis für das Erstellen der Gang nicht zurückerstattet.",
	"Löse Gang auf",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	hint "Löse die Gang auf....";
	[[grpPlayer],"TON_fnc_removeGang",false,false] spawn life_fnc_MP;
} else {
	hint "Auflösung der Gang abgebrochen";
};