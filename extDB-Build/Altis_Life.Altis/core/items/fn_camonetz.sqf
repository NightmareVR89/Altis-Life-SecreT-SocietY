/*
	File: fn_bunker.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Camonetz...
*/
private["_position","_camonetz"];
_camonetz = "CamoNet_BLUFOR_big_F" createVehicle [0,0,0];
_camonetz attachTo[player,[0,5.5,0]];
_camonetz setDir 90;
_camonetz setVariable["item","camonetzDeployed",true];

life_action_placeCamonetz = player addAction["Camonetz aufstellen",{if(!isNull life_camonetz) then {detach life_camonetz; life_camonetz = ObjNull;}; player removeAction life_action_placeCamonetz; life_action_placeCamonetz = nil;},"",999,false,false,"",'!isNull life_camonetz'];
life_camonetz = _camonetz;
waitUntil {isNull life_camonetz};
if(!isNil "life_action_placecamonetz") then {player removeAction life_action_placeCamonetz;};

if(isNull _camonetz) exitWith {life_camonetz = ObjNull;};
_camonetz setPos [(getPos _camonetz select 0),(getPos _camonetz select 1),0];
_camonetz setDamage 0;
life_action_packupCamonetz = player addAction["Camonetz einpacken",life_fnc_packupCamonetz,"",0,false,false,"",
' _net = nearestObjects[getPos player,["CamoNet_BLUFOR_big_F"],8] select 0; !isNil "_net" && !isNil {(_net getVariable "item")}'];