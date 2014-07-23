/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Error check?

if((_unit getVariable["restrained",FALSE])) then 
{
	_unit setVariable["restrained",FALSE,TRUE];
	_unit setVariable["Escorting",FALSE,TRUE];
	_unit setVariable["transporting",FALSE,TRUE];
	detach _unit;

	[true,"handschellen",1] call life_fnc_handleInv;

	[[0,format["%1 wurde von %2 wieder freigelassen",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
} else {
	if(_unit getVariable["hostage",FALSE]) then
	{
		_unit setVariable["hostage",FALSE,TRUE];
		_unit setVariable["Escorting",FALSE,TRUE];
		_unit setVariable["transporting",FALSE,TRUE];
		detach _unit;
		
		[[0,format["Die Geisel %1 wurde von %2 wieder freigelassen",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
	};
};