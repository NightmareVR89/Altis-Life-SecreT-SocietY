/*
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
_fnc_scriptName = "Player Synchronization";
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {hint "Du hast die sync-Option vor Kurzem schon benutzt, du kannst sie nur alle 5 Minuten nutzen.";};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint "Irgendwelche Cheater haben etwas angerichtet und dir so den Spielspaﬂ versaut.\n\nDu kannst es in einer Minute nochmal versuchen, wenn du denkst, dass ein Fehler vorliegt.";};

[] call SOCK_fnc_updateRequest;
hint "Gleiche Spielerdaten mit dem Server ab.\n\nBitte warte 20 Sekunden, bevor du den Server verl‰sst.";
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};
	