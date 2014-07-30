/*
	File: fn_onTakeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blocks the unit from taking something they should not have.
*/
private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

switch(playerSide) do
{
	case west: {[] call life_fnc_updateClothing;}; //Blah
	case civilian: {
		//Currently stoping the civilians from taking the indep clothing from medics.
		if(_item in ["U_B_CombatUniform_mcam"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
		if(_item in ["U_O_OfficerUniform_ocamo"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
		if(_item in ["U_B_CombatUniform_mcam_vest"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
		if(_item in ["U_Rangemaster"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
		if(_item in ["U_B_CombatUniform_mcam_worn"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
		if(_item in ["U_B_SpecopsUniform_sgg"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
	};
	case independent: {[] call life_fnc_updateClothing;};
	case east: {[] call life_fnc_updateClothing;};
};