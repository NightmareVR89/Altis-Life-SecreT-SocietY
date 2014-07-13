/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_rebel = false;
		license_civ_driver = false;
		license_civ_heroin = false;
		license_civ_marijuana = false;
		license_civ_coke = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_rebel = false;
		license_civ_driver = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
			license_civ_driver = false;
			license_civ_air = false;
			license_civ_truck = false;
			license_civ_boat = false;
			license_civ_adac = false;
			hint "Du hast alle deine Führerscheine und deine AAMC Mitgliedschaft wegen eines Fahrzeugunfalls mit Todesfolge verloren.";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_civ_gun = false;
			hint "Sie haben Ihren Waffenschein wegen Totschlags verloren.";
		};
	};
	
	case 4:
	{
		license_civ_adac = false;
		hint "Der ADAC hat dir die Mitgliedschaft entzogen.";
	};
	
	case 5:
	{
		license_civ_adac = true;
		hint "Du hast eine ADAC-Mitgliedschaft bekommen.";
	};
};