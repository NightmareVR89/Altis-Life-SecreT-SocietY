/*
	File: fn_bunker.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Schranke...
*/
private["_position","_schranke"];
_schranke = "Land_BarGate_F" createVehicle [0,0,0];
_schranke attachTo[player,[0,5.5,0]];
_schranke setDir 90;
_schranke setVariable["item","schrankeDeployed",true];

life_action_placeSchranke = player addAction["Schranke aufstellen",{if(!isNull life_schranke) then {detach life_schranke; life_schranke = ObjNull;}; player removeAction life_action_placeSchranke; life_action_placeSchranke = nil;},"",999,false,false,"",'!isNull life_schranke'];
life_schranke = _schranke;
waitUntil {isNull life_schranke};
if(!isNil "life_action_placeschranke") then {player removeAction life_action_placeSchranke;};

if(isNull _schranke) exitWith {life_schranke = ObjNull;};
_schranke setPos [(getPos _schranke select 0),(getPos _schranke select 1),0];
_schranke setDamage 0;
life_action_packupSchranke = player addAction["Schranke einpacken",life_fnc_packupSchranke,"",0,false,false,"",
' _bag = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_bag" && !isNil {(_bag getVariable "item")}'];