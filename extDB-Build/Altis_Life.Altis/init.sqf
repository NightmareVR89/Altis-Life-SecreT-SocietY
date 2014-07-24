enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Secret_Society v3.1.4";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "real_weather.sqf";
[] execVM "core\actions\teargas.sqf";
[] execVM "core\actions\soundgranate.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;
[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};