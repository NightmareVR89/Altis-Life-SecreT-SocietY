/*
	File: fn_removeHeadgearsqf
	Author: ColinM
	
	Description:
	Removes headgear of unit from police command.
*/
private["_unit","_headgear"];
_headgear = ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_mask = headgear _unit;
if(isNull _unit) exitWith {};
if !((_mask) in _headgear) exitWith { hint format["%1 Trägt keine Maske",_unit getVariable["realname",name _unit]]; };

switch((_mask) in _headgear) do 
{
	case (_unit canAddItemToBackpack _mask):
	{
		_unit addItemToBackpack _mask;
		removeHeadgear _unit;
		hint "Du hast die verdächtige Maske abgenommen und in seinen Rucksack gelegt";
	};
	case (_unit canAddItemToVest _mask):
	{
		_unit addItemToVest _mask;
		removeHeadgear _unit;
		hint "Du hast die verdächtige Maske abgenommen und in seine Veste gelegt";
	};
	case (_unit canAddItemToUniform _mask):
	{
		_unit addItemToUniform _mask;
		removeHeadgear _unit;
		hint "Du hast die verdächtige Maske abgenommen und in seine Uniform gelegt";
	};
	default
	{
		removeHeadgear _unit;
		hint "Verdächtiger hat keine verfügbaren Slots, Lösche Maske...";
	};
};