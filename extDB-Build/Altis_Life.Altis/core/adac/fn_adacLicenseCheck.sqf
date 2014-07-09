/*
	File: fn_adacLicenseCheck.sqf
	Based on fn_licenseCheck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the ADAC license to the ADAC Guy.
*/
private["_adac"];
_adac = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _adac) exitWith {}; //Bad entry

_licenses = "";
//Licenses
{
	if(missionNamespace getVariable (_x select 0) && _x select 1 == "civ") then
	{
		_licenses = _licenses + ([_x select 0] call life_fnc_varToStr) + "<br/>";
	};
} foreach life_adaclicenses;

if(_licenses == "") then {_licenses = "Keine ADAC Mitgliedschaft<br/>";};

[[player getVariable["realname",name player],_licenses],"life_fnc_adacLicensesRead",_adac,FALSE] spawn life_fnc_MP;