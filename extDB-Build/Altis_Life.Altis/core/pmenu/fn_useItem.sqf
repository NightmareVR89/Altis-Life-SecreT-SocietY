/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "Such dir erst einen Gegenstand aus!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Du kanst jetzt 3min rennen.","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Sie haben bereits ein Nagelbrett ausgelegt"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "Sie können das Fahrzeug nicht betanken, während Sie drin sind!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	case (_item == "schuafel"):
	{
		[] spawn life_fnc_Schaufel;
	};
	
	case (_item == "roadcone"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_roadcone;
		};
	};
	
	case (_item == "sandbag"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_sandbag;
		};
	};
	
	case (_item == "barrier"):
	{	
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrier;
		};
	};
	case (_item == "bunker"):
	{	
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bunker;
		};
	};
	case (_item == "camonetz"):
	{
		if(!isNull life_camonetz) exitWith {hint "Sie hast bereits ein Camonetz aufgebaut."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_camonetz;
		};
	};
	case (_item == "schranke"):
	{	
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_schranke;
		};
	};
	case (_item == "lagerfeuer"):
	{	
		if(!isNull life_lagerfeuer) exitWith {hint "Sie hast bereits ein Lagerfeuer gemacht."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_lagerfeuer;
		};
	};
	case (_item == "stacheldraht"):
	{	
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_stacheldraht;
		};
	};
	case (_item == "zelt"):
	{	
		if(!isNull life_zelt) exitWith {hint "Sie hast bereits ein Zelt aufgestellt."};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_zelt;
		};
	};
	case (_item == "wand"):
	{	
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_wand;
		};
	};
	case (_item == "niere"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	default
	{
		hint "Das ist kein benutzbarer Gegenstand.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;