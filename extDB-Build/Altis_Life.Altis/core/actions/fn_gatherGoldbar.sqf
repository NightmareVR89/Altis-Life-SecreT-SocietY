/*
	File: fn_gatherCannabis.sqf
	
	Description:
	Gathers Goldbars
*/
private["_sum"];
_sum = ["goldbarp",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	TitleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Gold"],"PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"goldbarp",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Collected"),localize "STR_Item_Gold"],"PLAIN"];
		player say3D "gold";
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;