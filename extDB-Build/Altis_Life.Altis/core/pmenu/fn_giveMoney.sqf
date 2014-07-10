/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "Niemand wurde ausgewählt!";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "Du hast vor kurzem die Staatsbank ausgeraubt! Du kannst noch kein Geld abgeben.";ctrlShow[2001,true];};
if(!([_amount] call fnc_isnumber)) exitWith {hint "Du hast kein richtiges Nummernformat eingegeben.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Du musst die richtige Summe angeben, die du abgeben möchtest.";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "Du kannst nicht so viel abgeben!";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Der ausgewählte Spieler ist nicht in deiner Reichweite";};
hint format["Du hast %2 $%1 gegeben",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
life_cash = life_cash - (parseNumber(_amount));
[] call SOCK_fnc_updateRequest;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];