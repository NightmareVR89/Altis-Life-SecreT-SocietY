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
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;
[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};
[] execVM "real_weather.sqf";
fnc_say3D =
{
_unit = _this select 0;
_sound = _this select 1;
_unit say3D _sound;
};