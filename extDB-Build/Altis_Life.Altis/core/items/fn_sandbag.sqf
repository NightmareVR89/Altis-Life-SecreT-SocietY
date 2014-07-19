/*
	File: fn_sandbag.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Sandbag wall...
*/
private["_position","_sandbag"];
_sandbag = "Land_BagFence_Long_F" createVehicle [0,0,0];
_sandbag attachTo[player,[0,5.5,0]];
_sandbag setDir 90;
_sandbag setVariable["item","sandbagDeployed",true];

life_action_placeSandbag = player addAction["Sandsäcke aufstellen",{if(!isNull life_sandbag) then {detach life_sandbag; life_sandbag = ObjNull;}; player removeAction life_action_placeSandbag; life_action_placeSandbag = nil;},"",999,false,false,"",'!isNull life_sandbag'];
life_sandbag = _sandbag;
waitUntil {isNull life_sandbag};
if(!isNil "life_action_placesandbag") then {player removeAction life_action_placeSandbag;};

if(isNull _sandbag) exitWith {life_sandbag = ObjNull;};
_sandbag setPos [(getPos _sandbag select 0),(getPos _sandbag select 1),0];
_sandbag setDamage 0;
life_action_packupSandbag = player addAction["Sandsäcke einpacken",life_fnc_packupSandbag,"",0,false,false,"",
' _bag = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0; !isNil "_bag" && !isNil {(_bag getVariable "item")}'];