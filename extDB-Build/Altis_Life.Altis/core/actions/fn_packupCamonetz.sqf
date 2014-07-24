/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Camonetz.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["CamoNet_BLUFOR_big_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == civilian) then {
	if(([true,"camonetz",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast das Camonetz eingepackt.","PLAIN"];
		player removeAction life_action_packupCamonetz;
		life_action_packupCamonetz = nil;
		deleteVehicle _bag;
	};
};