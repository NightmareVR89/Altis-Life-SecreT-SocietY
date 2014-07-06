/*
	File: fn_removeHeadgearsqf
	Author: ColinM
	
	Description:
	Removes headgear of unit from police command.
*/
private["_unit","_headgear"];
_headgear = ["H_Shemag_olive","H_Shemag_khk"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_mask = headgear _unit;
if(isNull _unit) exitWith {};
if !((_mask) in _headgear) exitWith { hint format["%1 is not wearing a mask",_unit getVariable["realname",name _unit]]; };

switch((_mask) in _headgear) do 
{
	case (_unit canAddItemToBackpack _mask):
	{
		_unit addItemToBackpack _mask;
		removeHeadgear _unit;
		hint "You have removed the suspects mask and placed it in his backpack";
	};
	case (_unit canAddItemToVest _mask):
	{
		_unit addItemToVest _mask;
		removeHeadgear _unit;
		hint "You have removed the suspects mask and placed it in his vest";
	};
	case (_unit canAddItemToUniform _mask):
	{
		_unit addItemToUniform _mask;
		removeHeadgear _unit;
		hint "You have removed the suspects mask and placed it in his uniform";
	};
	default
	{
		removeHeadgear _unit;
		hint "Suspect has no available slots, deleting mask";
	};
};