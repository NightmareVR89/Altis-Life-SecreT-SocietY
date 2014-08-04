#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};
// auszahlungen nach rang
switch (__GETC__(life_coplevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 100;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 150;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 200;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 250;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 300;}; // Rank 5 
	             case 6: {life_paycheck = life_paycheck + 350;}; // Rank 6
	             case 7: {life_paycheck = life_paycheck + 400;}; // Rank 7
			};
player setVariable["coplevel", __GETC__(life_coplevel), true];
player setVariable["adminlevel", __GETC__(life_adminlevel), true];
[] call life_fnc_spawnMenu;
[] call life_fnc_updateClothing;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.