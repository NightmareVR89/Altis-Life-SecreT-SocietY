/*
	File: fn_packupSandbag.sqf
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed sandbag wall.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == west || playerSide == east) then {
	if(([true,"sandbag",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast die Sandsäcke eingepackt.","PLAIN"];
		player removeAction life_action_packupSandbag;
		life_action_packupSandbag = nil;
		deleteVehicle _bag;
	};
};