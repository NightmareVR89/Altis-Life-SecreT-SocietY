/*
	File: fn_serviceTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for the service truck.
	*Needs to be revised for new system and flow*
*/
private["_nearby"];
_nearby = nearestObjects[(vehicle player),["Car","Ship","Air"],10];
if(count (_nearby) > 1) then
{
	_vehicle = _nearby select 1;
	_name = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	titleText[format["Warte %1 nicht bewegen...",_name],"PLAIN"];
	titleFadeOut 12;
	sleep 10;
	if((vehicle player) distance _vehicle > 10) exitWith {titleText["Du hast es nicht geschafft das Fahrzeug zu betanken/reparieren weil du mehr als 10m davon entfernt bist","PLAIN"];};
	titleText[format["Du hast den %1 repariert/betankt",_name],"PLAIN"];
	if(!local _vehicle) then
	{
		[{_vehicle setFuel 1;},"BIS_fnc_spawn",_vehicle,false] spawn life_fnc_MP;
	}
		else
	{
		_vehicle setFuel 1;
	};
	_vehicle setDamage 0;
};