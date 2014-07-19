/*
	File: fn_packuproadcone.sqf
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed roadcone.
*/
private["_cone"];
_cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_cone") exitWith {};
if(playerSide == west || playerSide == east) then {
	if(([true,"roadcone",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast das Verkehrshütchen eingepackt.","PLAIN"];
		player removeAction life_action_packupRoadcone;
		life_action_packupRoadcone = nil;
		deleteVehicle _cone;
	};
};