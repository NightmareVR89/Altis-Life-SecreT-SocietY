/*
	File: fn_broadcast.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Broadcast system used in the life mission for multi-notification purposes.
*/
private["_type","_message","_scrolltext"];
_type = [_this,0,0,[[],0]] call BIS_fnc_param;
_message = [_this,1,"",[""]] call BIS_fnc_param;
_scrolltext = [_this,2,"",[""]] call BIS_fnc_param;
if(_message == "") exitwith {};

if(typeName _type == typeName []) then
{
	for "_i" from 0 to (count _type)-1 do
	{
		switch((_type select _i)) do
		{
			case 0: {systemChat _message};
			case 1: {hint format["%1", _message]};
			case 2: {titleText[format["%1",_message],"PLAIN"];};
			case 3: {hint parseText format["%1", _message]};//new line
			case 4: {[_message,_scrolltext] call life_fnc_AAN;};
		};
	};
}
	else
{
	switch (_type) do
	{
		case 0: {systemChat _message};
		case 1: {hint format["%1", _message]};
		case 2: {titleText[format["%1",_message],"PLAIN"];};
		case 3: {hint parseText format["%1", _message]};//new line
		case 4: {[_message,_scrolltext] call life_fnc_AAN;};
	};
};