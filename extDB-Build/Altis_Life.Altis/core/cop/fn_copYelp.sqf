private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "yelp"}) exitWith {};

while {true} do
{
    if(!(_vehicle getVariable "yelp")) exitWith {};
    if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["yelp",false,true]};
    if(!alive _vehicle) exitWith {};
    if(isNull _vehicle) exitWith {};
	[[_vehicle,"yelp"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
    sleep 4.7;
    if(!(_vehicle getVariable "yelp")) exitWith {};
};