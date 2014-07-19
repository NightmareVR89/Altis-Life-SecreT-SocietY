/*
	File: fn_packupRoadbarrier.sqf
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed barrier.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0;
if(isNil "_barrier") exitWith {};
if(playerSide == west || playerSide == east) then {
	if(([true,"barrier",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast die Absperrung eingepackt.","PLAIN"];
		player removeAction life_action_packupRoadbarrier;
		life_action_packupRoadbarrier = nil;
		deleteVehicle _barrier;
	};
};