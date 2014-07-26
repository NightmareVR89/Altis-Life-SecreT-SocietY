/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_sum","_rand"];
_sum = ["weintrauben",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_rand = round(random 5);
if(_sum > 0) then
{
	life_action_sammel_sperre = true;
	player say3D "bag.ogg"; // this only if you want the sound for the bag when you gather it 
	titleText["Sammle Weintrauben...","PLAIN"];
	titleFadeOut 2;
	sleep 2;
	if(([true,"weintrauben",_sum] call life_fnc_handleInv)) then
	{
	titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Weintrauben"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};


life_action_sammel_sperre = false;