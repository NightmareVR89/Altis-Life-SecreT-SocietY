/*
Wertstoffe
*/
private["_sum","_rand"];
_sum = ["muell",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_rand = round(random 5);
if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "harvest";
	TitleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Muell"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	sleep 5;
	if(([true,"muell",1] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Collected",localize "STR_Item_Meull"],"PLAIN"];
	};
};

life_sammel_sperre = false;