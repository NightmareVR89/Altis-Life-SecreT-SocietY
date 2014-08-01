/*

	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for Schaufel in mining.
*/
closeDialog 0;
private["_leiche","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "leiche_1") < 5): {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_2") < 5): {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_3") < 5) : {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_4") < 5) : {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_5") < 5): {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_6") < 5) : {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_7") < 5) : {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_8") < 5): {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_9") < 5): {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_10") < 5): {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_11") < 5): {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_12") < 5): {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_13") < 5): {_leiche = "schmuck"; _val = 2;};
	case (player distance (getMarkerPos "leiche_14") < 5): {_leiche = "schmuck"; _val = 1;};
	case (player distance (getMarkerPos "leiche_15") < 5): {_leiche = "schmuck"; _val = 2;};
	default {_leiche = "";};
};
//Mine check
if(_leiche == "") exitWith {hint "Du bist nicht in der Nähe eines Friedhofs!"};
if(vehicle player != player) exitWith {hint "Du kannst nicht aus einem Fahrzeug heraus sammeln!";};

_diff = [_leiche,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};
life_sammel_sperre = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_leiche,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_leiche,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %2 %1 gesammelt",_itemName,_diff],"PLAIN"];
};

life_sammel_sperre = false;