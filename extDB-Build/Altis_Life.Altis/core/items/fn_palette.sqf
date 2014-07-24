/*
	Based on: fn_spikeStrip
	by Bryan "Tonic" Boardwine
	
	Description:
	Creates a Palette...
*/
private["_position","_palette"];
_palette = "Land_Rack_F" createVehicle [0,0,0];
_palette attachTo[player,[0,5.5,0]];
_palette setDir 90;
_palette setVariable["item","paletteDeployed",true];

life_action_placePalette = player addAction["Palette aufstellen",{if(!isNull life_palette) then {detach life_palette; life_palette = ObjNull;}; player removeAction life_action_placePalette; life_action_placePalette = nil;},"",999,false,false,"",'!isNull life_palette'];
life_palette = _palette;
waitUntil {isNull life_palette};
if(!isNil "life_action_placepalette") then {player removeAction life_action_placePalette;};

if(isNull _palette) exitWith {life_palette = ObjNull;};
_palette setPos [(getPos _palette select 0),(getPos _palette select 1),0];
_palette setDamage 0;
life_action_packupPalette = player addAction["Palette einpacken",life_fnc_packupPalette,"",0,false,false,"",
' _bag = nearestObjects[getPos player,["Land_Rack_F"],8] select 0; !isNil "_bag" && !isNil {(_bag getVariable "item")}'];