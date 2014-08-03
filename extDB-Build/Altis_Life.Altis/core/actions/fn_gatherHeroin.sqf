/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers heroin?
*/
private["_rand","_sum"];
_rand = round(random 2);
_sum = ["heroinu",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "harvest";
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Heroin"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 5;
	if(([true,"heroinu",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Heroin"],"PLAIN"];
	};
};

life_sammel_sperre = false;