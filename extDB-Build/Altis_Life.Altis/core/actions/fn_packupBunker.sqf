/*
	File: fn_packupSandbag.sqf
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Bunker.
*/
private["_bunk"];
_bunk = nearestObjects[getPos player,["Land_BagBunker_Small_F"],8] select 0;
if(isNil "_bunk") exitWith {};
if(playerSide == west) then {
	if(([true,"bunker",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast den Bunker eingepackt.","PLAIN"];
		player removeAction life_action_packupBunker;
		life_action_packupBunker = nil;
		deleteVehicle _bunk;
	};
};