/*
	File: fn_bunker.sqf
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Schranke...
*/
private["_position","_wand"];
if(playerSide != west) exitWith {hint "Du bist kein Cop!"};
_wand = "Land_Shoot_House_Wall_Stand_F" createVehicle [0,0,0];
_wand attachTo[player,[0,5.5,0]];
_wand setDir 90;
_wand setVariable["item","wandDeployed",true];

life_action_placeWand = player addAction["Wand aufstellen",{if(!isNull life_wand) then {detach life_wand; life_wand = ObjNull;}; player removeAction life_action_placeWand; life_action_placeWand = nil;},"",999,false,false,"",'!isNull life_wand'];
life_wand = _wand;
waitUntil {isNull life_wand};
if(!isNil "life_action_placewand") then {player removeAction life_action_placeWand;};

if(isNull _wand) exitWith {life_wand = ObjNull;};
_wand setPos [(getPos _wand select 0),(getPos _wand select 1),0];
_wand setDamage 0;
life_action_packupWand = player addAction["Wand einpacken",life_fnc_packupWand,"",0,false,false,"",
' _wnd = nearestObjects[getPos player,["Land_Shoot_House_Wall_Stand_F"],8] select 0; !isNil "_wnd" && !isNil {(_wnd getVariable "item")}'];