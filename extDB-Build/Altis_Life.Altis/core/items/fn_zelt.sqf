/*
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Zelt...
*/
private["_position","_zelt"];
_zelt = "Land_TentA_F" createVehicle [0,0,0];
_zelt attachTo[player,[0,5.5,0]];
_zelt setDir 90;
_zelt setVariable["item","zeltDeployed",true];

life_action_placeZelt = player addAction["Zelt aufstellen",{if(!isNull life_Zelt) then {detach life_zelt; life_zelt = ObjNull;}; player removeAction life_action_placeZelt; life_action_placeZelt = nil;},"",999,false,false,"",'!isNull life_zelt'];
life_zelt = _zelt;
waitUntil {isNull life_zelt};
if(!isNil "life_action_placezelt") then {player removeAction life_action_placeZelt;};

if(isNull _zelt) exitWith {life_zelt = ObjNull;};
_zelt setPos [(getPos _zelt select 0),(getPos _zelt select 1),0];
_zelt setDamage 0;
life_action_packupZelt = player addAction["Zelt einpacken",life_fnc_packupZelt,"",0,false,false,"",
' _zlt = nearestObjects[getPos player,["Land_TentA_F"],8] select 0; !isNil "_zlt" && !isNil {(_zlt getVariable "item")}'];