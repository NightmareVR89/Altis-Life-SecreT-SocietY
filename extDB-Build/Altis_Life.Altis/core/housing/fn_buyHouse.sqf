#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Buys the house?
*/
private["_house","_uid","_action","_houseCfg"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_uid = getPlayerUID player;

if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};
if((_house getVariable["house_owned",false])) exitWith {hint "Dieses Haus gehört schon jemandem..."};
if(!isNil {(_house getVariable "house_sold")}) exitWith {hint "Dieses Haus wurde vor kurzem verkauft und wird noch in der Datenbank verarbeitet."};
if(!license_civ_home) exitWith {hint "Du hast keine Hausbesitzerlizenz!"};
if(count life_houses >= (__GETC__(life_houseLimit))) exitWith {hint format["Du kannst nur %1 Haus/Häuser zur selben Zeit besitzen.",__GETC__(life_houseLimit)]};
closeDialog 0;

_houseCfg = [(typeOf _house)] call life_fnc_houseConfig;
if(count _houseCfg == 0) exitWith {};
if(life_atmcash < (_houseCfg select 0)) exitWith {hint "Du hast nicht genug Geld auf deinem Konto!"};

_action = [
	format["Dieses Haus steht für <t color='#8cff9b'>$%1</t> zum Verkauf<br/>Es können dort bis zu %2 Lagercontainer aufgestellt werden",
	[(_houseCfg select 0)] call life_fnc_numberText,
	(_houseCfg select 1)],"Kaufe Haus","Kaufen","Abbrechen"
] call BIS_fnc_guiMessage;

if(_action) then {
	[[_uid,_house],"TON_fnc_addHouse",false,false] spawn life_fnc_MP;
	_house setVariable["house_owner",[_uid,player getVariable["realname",name player]],true];
	_house setVariable["locked",true,true];
	_house setVariable["Trunk",[[],0],true];
	_house setVariable["containers",[],true];
	_house setVariable["uid",round(random 99999)];
	life_atmcash = life_atmcash - (_houseCfg select 0);
	life_vehicles set[count life_vehicles,_house];
	life_houses set[count life_houses,[(getPosATL _house),[]]];
	_marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],getPosATL _house];
	_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";
	_numOfDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
	for "_i" from 1 to _numOfDoors do {
		_house setVariable[format["bis_disabled_Door_%1",_i],1,true];
	};
};