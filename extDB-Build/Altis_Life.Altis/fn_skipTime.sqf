/*
	@Version: 4.0
	@Author: [BWG] Joe
	@Edited: 10.06.2014
*/
private["_timeRatio","_skipTime"];

_timeRatio = 12;
_skipTime = _timeratio * 0.000278 * 10;

[_skipTime] spawn {
	while {true} do {
		sleep 10;
		skipTime (_this select 0);
	};
};

if (local player) then {	
	"life_skipTime" addPublicVariableEventHandler {
		setDate (_this select 1);
	};
};

if (!isServer) exitWith {};

[] spawn {
	while {true} do {
		sleep 60;
		life_skipTime = date;
		publicVariable "life_skipTime";
	};
};

