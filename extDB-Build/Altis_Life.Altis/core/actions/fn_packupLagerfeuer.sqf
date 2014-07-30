/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Lagerfeuer.
*/
private["_feuer"];
_feuer = nearestObjects[getPos player,["Campfire_burning_F"],8] select 0;
if(isNil "_feuer") exitWith {};
if(playerSide == civilian) then {
	if(([true,"lagerfeuer",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast das Lagerfeuer eingepackt.","PLAIN"];
		player removeAction life_action_packupLagerfeuer;
		life_action_packupLagerfeuer = nil;
		deleteVehicle _feuer;
	};
};