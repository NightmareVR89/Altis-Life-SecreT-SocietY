/*
	File: fn_bunker.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Bunker...
*/
private["_position","_bunker"];
_bunker = "Land_BagBunker_Small_F" createVehicle [0,0,0];
_bunker attachTo[player,[0,5.5,0]];
_bunker setDir 90;
_bunker setVariable["item","bunkerDeployed",true];

life_action_placeBunker = player addAction["Bunker aufstellen",{if(!isNull life_bunker) then {detach life_bunker; life_bunker = ObjNull;}; player removeAction life_action_placeBunker; life_action_placeBunker = nil;},"",999,false,false,"",'!isNull life_bunker'];
life_bunker = _bunker;
waitUntil {isNull life_bunker};
if(!isNil "life_action_placebunker") then {player removeAction life_action_placeBunker;};

if(isNull _bunker) exitWith {life_bunker = ObjNull;};
_bunker setPos [(getPos _bunker select 0),(getPos _bunker select 1),0];
_bunker setDamage 0;
life_action_packupBunker = player addAction["Bunker einpacken",life_fnc_packupBunker,"",0,false,false,"",
' _bag = nearestObjects[getPos player,["Land_BagBunker_Small_F"],8] select 0; !isNil "_bag" && !isNil {(_bag getVariable "item")}'];