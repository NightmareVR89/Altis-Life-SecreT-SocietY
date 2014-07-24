/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Schranke.
*/
private["_bag"];
_bag = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0;
if(isNil "_bag") exitWith {};
if(playerSide == west) then {
	if(([true,"schranke",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast die Schranke eingepackt.","PLAIN"];
		player removeAction life_action_packupSchranke;
		life_action_packupSchranke = nil;
		deleteVehicle _bag;
	};
};