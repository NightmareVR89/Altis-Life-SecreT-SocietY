/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed zelt.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["Land_TentA_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == civilian) then {
	if(([true,"zelt",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast das Zelt eingepackt.","PLAIN"];
		player removeAction life_action_packupZelt;
		life_action_packupZelt = nil;
		deleteVehicle _bag;
	};
};