/*
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Lagerfeuer...
*/
private["_position","_lagerfeuer"];
_lagerfeuer = "Campfire_burning_F" createVehicle [0,0,0];
_lagerfeuer attachTo[player,[0,5.5,0]];
_lagerfeuer setDir 90;
_lagerfeuer setVariable["item","lagerfeuerDeployed",true];

life_action_placeLagerfeuer = player addAction["Lagerfeuer aufbauen",{if(!isNull life_lagerfeuer) then {detach life_lagerfeuer; life_lagerfeuer = ObjNull;}; player removeAction life_action_placeLagerfeuer; life_action_placeLagerfeuer = nil;},"",999,false,false,"",'!isNull life_lagerfeuer'];
life_lagerfeuer = _lagerfeuer;
waitUntil {isNull life_lagerfeuer};
if(!isNil "life_action_placelagerfeuer") then {player removeAction life_action_placeLagerfeuer;};

if(isNull _lagerfeuer) exitWith {life_lagerfeuer = ObjNull;};
_lagerfeuer setPos [(getPos _lagerfeuer select 0),(getPos _lagerfeuer select 1),0];
_lagerfeuer setDamage 0;
life_action_packupLagerfeuer = player addAction["Lagerfeuer einpacken",life_fnc_packupLagerfeuer,"",0,false,false,"",
' _feuer = nearestObjects[getPos player,["Campfire_burning_F"],8] select 0; !isNil "_feuer" && !isNil {(_feuer getVariable "item")}'];