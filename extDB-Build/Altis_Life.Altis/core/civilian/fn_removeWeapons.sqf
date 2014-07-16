/*
	Author: Tobias 'Xetoxyc' Sittenauer

	File: fn_removeWeapons.sqf
*/
private["_cop","_legal","_handgun"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
_legal = ["hgun_Rook40_F","hgun_Pistol_heavy_02_F","hgun_ACPC2_F"];
_handgun = handgunWeapon player;
if(_cop == player) then {}; //WTF?

if(isNull _cop OR !(player getVariable["restrained",FALSE])) exitWith {}; //Error check?

if((handgunWeapon player) in _legal) then 
{
	switch(true)do 
	{
		case (player canAddItemToBackpack _handgun):
		{
			removeAllWeapons player;
			player addItemToBackpack _handgun;
			hint "Deine Pistole wurde in deinen Rucksack gesteckt";
		};
		case (player canAddItemToVest _handgun):
		{
			removeAllWeapons player;
			player addItemToVest _handgun;
			hint "Deine Pistole wurde in deine Weste gesteckt";
		};
		case (player canAddItemToUniform _handgun):
		{
			removeAllWeapons player;
			player addItemToUniform _handgun;
			hint "Deine Pistole wurde in deine Hose gesteckt";
		};
		default
		{
			removeAllWeapons player;
			hint "Deine Pistole wurde beschlagnahmt";
		};
	};
} else {
	[[getPlayerUID player,profileName,"weapon"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	removeAllWeapons player;
	{player removeMagazine _x} foreach (magazines player);
	hint format["Deine Waffen wurden beschlagnahmt"];
	
	[] call SOCK_fnc_syncData;
};