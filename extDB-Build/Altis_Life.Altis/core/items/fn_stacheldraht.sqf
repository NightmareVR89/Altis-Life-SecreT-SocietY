/*
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Stacheldraht...
*/
private["_position","_stacheldraht"];
if(playerSide != west) then exitWith {hint "Du bist kein Cop!"};
_stacheldraht = "Land_Razorwire_F" createVehicle [0,0,0];
_stacheldraht attachTo[player,[0,5.5,0]];
_stacheldraht setDir 90;
_stacheldraht setVariable["item","stacheldrahtDeployed",true];

life_action_placeStacheldraht = player addAction["Stacheldraht aufbauen",{if(!isNull life_stacheldraht) then {detach life_stacheldraht; life_stacheldraht = ObjNull;}; player removeAction life_action_placeStacheldraht; life_action_placeStacheldraht = nil;},"",999,false,false,"",'!isNull life_stacheldraht'];
life_stacheldraht = _stacheldraht;
waitUntil {isNull life_stacheldraht};
if(!isNil "life_action_placestacheldraht") then {player removeAction life_action_placeStacheldraht;};

if(isNull _stacheldraht) exitWith {life_stacheldraht = ObjNull;};
_stacheldraht setPos [(getPos _stacheldraht select 0),(getPos _stacheldraht select 1),0];
_stacheldraht setDamage 0;
life_action_packupStacheldraht = player addAction["Stacheldraht einpacken",life_fnc_packupStacheldraht,"",0,false,false,"",
' _stachel = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_stachel" && !isNil {(_stachel getVariable "item")}'];