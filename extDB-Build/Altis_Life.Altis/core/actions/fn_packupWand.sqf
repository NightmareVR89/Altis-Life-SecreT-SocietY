/*
	File: fn_packupSandbag.sqf
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Bunker.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["Land_Shoot_House_Wall_Stand_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == civilian) then {
	if(([true,"wand",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast die Wand eingepackt.","PLAIN"];
		player removeAction life_action_packupWand;
		life_action_packupWand = nil;
		deleteVehicle _bag;
	};
};