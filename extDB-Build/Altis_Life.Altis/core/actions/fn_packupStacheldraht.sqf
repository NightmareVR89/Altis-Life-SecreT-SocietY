/*
	Based on fn_packupSpikes.sqf
	by Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Schtacheldraht.
*/
private["_stachel"];
_stachel = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0;
if(isNil "_stachel") exitWith {};
if(playerSide == west) then {
	if(([true,"stacheldraht",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast das Stacheldraht eingepackt.","PLAIN"];
		player removeAction life_action_packupStacheldraht;
		life_action_packupStacheldraht = nil;
		deleteVehicle _stachel;
	};
};