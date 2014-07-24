/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Palette.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["Land_Pallet_vertical_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == civ) then {
	if(([true,"palette",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast die Palette eingepackt.","PLAIN"];
		player removeAction life_action_packupPalette;
		life_action_packupPalette = nil;
		deleteVehicle _bag;
	};
};