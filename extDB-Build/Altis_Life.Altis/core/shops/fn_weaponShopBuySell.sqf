#include <macro.h>
/*
	File: fn_weaponShopBuySell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling of the weapon shop for buying / selling an item.
*/
disableSerialization;
private["_price","_item","_itemInfo","_bad"];
if((lbCurSel 38403) == -1) exitWith {hint "Du musst einen Gegenstand zum kaufen/verkaufen auswählen."};
_price = lbValue[38403,(lbCurSel 38403)]; if(isNil "_price") then {_price = 0;};
_item = lbData[38403,(lbCurSel 38403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;

_bad = "";

if((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = "Du hast nicht genug Platz für diesen Gegenstand."};
	};
};

if(_bad != "") exitWith {hint _bad};

if((uiNamespace getVariable["Weapon_Shop_Filter",0]) == 1) then
{
	life_cash = life_cash + _price;
	[_item,false] call life_fnc_handleItem;
	hint parseText format["Du hast eine %1 für <t color='#8cff9b'>$%2</t> verkauft",_itemInfo select 1,[_price] call life_fnc_numberText];
	[nil,(uiNamespace getVariable["Weapon_Shop_Filter",0])] call life_fnc_weaponShopFilter; //Update the menu.
}
	else
{
	private["_hideout"];
	_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
	if(!isNil "_hideout" && {!isNil {grpPlayer getVariable "gang_bank"}} && {(grpPlayer getVariable "gang_bank") >= _price}) then {
		_action = [
			format["Deine Gang hat genug Geld um das zu bezahlen. Willst du mit dem Gangvermögen, oder mit deinem  eigenen Vermögen zahlen?<br/><br/>Gangvermögen: <t color='#8cff9b'>$%1</t><br/>Dein Bargeld: <t color='#8cff9b'>$%2</t>",
				[(grpPlayer getVariable "gang_bank")] call life_fnc_numberText,
				[life_cash] call life_fnc_numberText
			],
			"Zahle in Bar oder über Gangvermögen",
			"Gangvermögen",
			"Mein Bargeld"
		] call BIS_fnc_guiMessage;
		if(_action) then {
			hint parseText format["Du hast eine %1 für <t color='#8cff9b'>$%2</t> mit dem Gangvermögen gekauft.",_itemInfo select 1,[_price] call life_fnc_numberText];
			_funds = grpPlayer getVariable "gang_bank";
			_funds = _funds - _price;
			grpPlayer setVariable["gang_bank",_funds,true];
			[_item,true] spawn life_fnc_handleItem;
			[[1,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
			closeDialog 0;
		} else {
			if(_price > life_cash) exitWith {hint "Du hast nicht so viel Geld!"};
			hint parseText format["Du hast eine %1 für <t color='#8cff9b'>$%2</t> gekauft",_itemInfo select 1,[_price] call life_fnc_numberText];
			__SUB__(life_cash,_price);
			[_item,true] spawn life_fnc_handleItem;
			closeDialog 0;
		};
	} else {
		if(_price > life_cash) exitWith {hint "Du hast nicht so viel Geld!"};
		hint parseText format["Du hast eine %1 für <t color='#8cff9b'>$%2</t> gekauft",_itemInfo select 1,[_price] call life_fnc_numberText];
		life_cash = life_cash - _price;
		[_item,true] spawn life_fnc_handleItem;
		closeDialog 0;
	};
};

[] call life_fnc_saveGear;