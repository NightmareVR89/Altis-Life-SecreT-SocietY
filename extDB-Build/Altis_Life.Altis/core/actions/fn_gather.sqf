/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_sound"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","frosch_1","weintraub_1","taba_1","muel_1"];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_sammel_sperre = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3; _sound = "take";};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3; _sound = "take";};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = round(random 2); _sound = "harvest";};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = round(random 2); _sound = "harvest";};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = round(random 2); _sound = "harvest";};
	case (_zone in ["frosch_1"]): {_gather = "frosch"; _val = round(random 5); _sound = "frosch";};
	case (_zone in ["weintraub_1"]): {_gather = "weintraube"; _val = round(random 3); _sound = "harvest";};
	case (_zone in ["taba_1"]): {_gather = "tabak"; _val = round(random 3); _sound = "harvest";};
	case (_zone in ["muel_1"]): {_gather = "muell"; _val = round(random 3); _sound = "harvest";};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {hint localize "STR_NOTF_GatherVeh";};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_sammel_sperre = true;
for "_i" from 0 to 2 do
{
	player say3D _sound;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_sammel_sperre = false;