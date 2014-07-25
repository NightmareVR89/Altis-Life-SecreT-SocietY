/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_sum"];
_sum = ["weintrauben",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_sammel_sperre = true;
titleText["Sammle Weintrauben...","PLAIN"];
titleFadeOut 2;
sleep 2;
if(([true,"weintrauben",_sum] call life_fnc_handleInv)) then
{
playSound "bag.ogg"; // this only if you want the sound for the bag when you gather it 
titleText["Du hast einige Weintrauben eingesammelt.","PLAIN"];
};
};

life_action_sammel_sperre = false;