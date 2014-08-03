/*
	File: fn_gatherCocaine.sqf
	
	Description:
	Gathers cocaine?
*/
private["_rand","_sum"];
_rand = round(random 2);
_sum = ["cocaine",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "harvest";
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Cocaine"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	sleep 5;
	if(([true,"cocaine",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Cocaine"],"PLAIN"];
	};
};

life_sammel_sperre = false;