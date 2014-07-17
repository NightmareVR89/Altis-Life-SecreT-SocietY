private["_rand","_sum"];
_rand = round(random 5);
_sum = ["frosch",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	player say3D "frosch";
	titleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Froesche"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 5;
	if(([true,"frosch",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Froesche"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;