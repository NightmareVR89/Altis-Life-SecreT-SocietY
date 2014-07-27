/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_rand","_sum"];
_rand = round(random 5);
_sum = ["weintraube",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_sammel_sperre = true;
titleText["Sammle Weintrauben...","PLAIN"];
titleFadeOut 2;
sleep 2;
if(([true,"weintraube",_sum] call life_fnc_handleInv)) then
{
playSound "bag.ogg"; // this only if you want the sound for the bag when you gather it 
titleText["Du hast ein paar Weintrauben gesammelt.","PLAIN"];
};
};

life_sammel_sperre = false;