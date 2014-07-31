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
if(isNull _driver) exitWith {};

switch(_type) do {
	case "0": {
		[[_driver,"PhotoSound"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1213"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		hint "Du wurdest geblitzt! Hier sind maximal 50 km/h erlaubt und du bist etwas zu schnell gefahren. Du wirst nun gesucht und musst $10 zahlen.";
	};
	case "1": {
		[[_driver,"PhotoSound"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1214"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		hint "Du wurdest geblitzt! Hier sind maximal 50 km/h erlaubt und du bist mehr als 20 km/h zu schnell gefahren. Du wirst nun gesucht und musst $100 zahlen.";
	};
	case "2": {
		[[_driver,"PhotoSound"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
		[[getPlayerUID _driver,_driver getVariable["realname",name _driver],"1215"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		hint "Du wurdest geblitzt! Hier sind maximal 50 km/h erlaubt und du Raser bist mehr als 50 km/h zu schnell gefahren. Du wirst nun gesucht und musst $100 zahlen.";
	};
};