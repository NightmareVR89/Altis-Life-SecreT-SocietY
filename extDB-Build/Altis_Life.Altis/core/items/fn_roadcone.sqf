/*
	File: fn_roadcone.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Roadcone...
*/
private["_position","_roadcone"];
_roadcone = "RoadCone_L_F" createVehicle [0,0,0];
_roadcone attachTo[player,[0,5.5,0]];
_roadcone setDir 90;
_roadcone setVariable["item","roadconeDeployed",true];

life_action_placeRoadcone = player addAction["Verkehrshütchen aufstellen",{if(!isNull life_roadcone) then {detach life_roadcone; life_roadcone = ObjNull;}; player removeAction life_action_placeRoadcone; life_action_placeRoadcone = nil;},"",999,false,false,"",'!isNull life_roadcone'];
life_roadcone = _roadcone;
waitUntil {isNull life_roadcone};
if(!isNil "life_action_placeRoadcone") then {player removeAction life_action_placeRoadcone;};

if(isNull _roadcone) exitWith {life_roadcone = ObjNull;};
_roadcone setPos [(getPos _roadcone select 0),(getPos _roadcone select 1),0];
_roadcone setDamage 0;
life_action_packupRoadcone = player addAction["Verkehrshütchen einpacken",life_fnc_packuproadcone,"",0,false,false,"",
' _cone = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}'];