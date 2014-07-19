/*
	File: fn_geblitzt.sqf
	Author: Marius "NiGhTm4r3" Friebe
	
	Description:
	Fahrer wird auf die Wantedliste gepackt und bekommt ne Meldung...
*/
private["_type","_driver","_speed_limit","_vehicle_speed"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_driver = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_speed_limit = [_this,2,"",[""]] call BIS_fnc_param;
_vehicle_speed = [_this,3,"",[""]] call BIS_fnc_param;
if(isNull _driver) exitWith {}; //No one to return it to?

switch(_type) do {
	case 0: {
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1213"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		titleText[format["Du wurdest geblitzt! Hier sind maximal %1 km/h erlaubt und du bist %2 km/h gefahren. Du wirst nun gesucht und musst $10 zahlen.",_speed_limit,round _vehicle_speed],"PLAIN"];
	};
	case 1: {
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1214"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		titleText[format["Du wurdest geblitzt! Hier sind maximal %1 km/h erlaubt und du bist %2 km/h gefahren. Du wirst nun gesucht und musst $10 zahlen.",_speed_limit,round _vehicle_speed],"PLAIN"];
	};
	case 2: {
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1215"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		titleText[format["Du wurdest geblitzt! Hier sind maximal %1 km/h erlaubt und du bist %2 km/h gefahren. Du wirst nun gesucht und musst $10 zahlen.",_speed_limit,round _vehicle_speed],"PLAIN"];
	};
};