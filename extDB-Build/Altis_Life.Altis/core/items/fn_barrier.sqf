/*
	File: fn_barrier.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a barrier...
*/
private["_position","_roadbarrier"];
_roadbarrier = "RoadBarrier_small_F" createVehicle [0,0,0];
_roadbarrier attachTo[player,[0,5.5,0]];
_roadbarrier setDir 90;
_roadbarrier setVariable["item","roadbarrierDeployed",true];

life_action_placeRoadbarrier = player addAction["Absperrung aufstellen",{if(!isNull life_roadbarrier) then {detach life_roadbarrier; life_roadbarrier = ObjNull;}; player removeAction life_action_placeRoadbarrier; life_action_placeRoadbarrier = nil;},"",999,false,false,"",'!isNull life_roadbarrier'];
life_roadbarrier = _roadbarrier;
waitUntil {isNull life_roadbarrier};
if(!isNil "life_action_placeRoadbarrier") then {player removeAction life_action_placeRoadbarrier;};

if(isNull _roadbarrier) exitWith {life_roadbarrier = ObjNull;};
_roadbarrier setPos [(getPos _roadbarrier select 0),(getPos _roadbarrier select 1),0];
_roadbarrier setDamage 0;
life_action_packupRoadbarrier = player addAction["Absperrung einpacken",life_fnc_packuproadbarrier,"",0,false,false,"",
' _barrier = nearestObjects[getPos player,["RoadBarrier_small_F"],8] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}'];