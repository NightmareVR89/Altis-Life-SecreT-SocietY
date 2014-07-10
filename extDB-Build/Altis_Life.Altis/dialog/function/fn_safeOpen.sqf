/*	
	File: fn_safeOpen.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the safe inventory menu.
*/
if(dialog) exitWith {}; //A dialog is already open.
life_safeObj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull life_safeObj) exitWith {};
if(playerSide != civilian) exitWith {};
if((life_safeObj getVariable["safe",-1]) < 1) exitWith {hint "Der Safe ist leer!";};
if((life_safeObj getVariable["inUse",false])) exitWith {hint "Jemand greift gerade schon auf den Safe zu.."};
if({side _x == west} count playableUnits < 5) exitWith {hint "Es müssen mindestens 5 oder mehr Polizisten online sein, damit du weitermachen kannst."};
if(!createDialog "Federal_Safe") exitWith {"Konnte keinen Dialog erstellen. Bitte melde das im Forum."};
disableSerialization;
ctrlSetText[3501,"Safe Inventar"];
[life_safeObj] call life_fnc_safeInventory;
life_safeObj setVariable["inUse",true,true];
[life_safeObj] spawn
{
	waitUntil {isNull (findDisplay 3500)};
	(_this select 0) setVariable["inUse",false,true];
};