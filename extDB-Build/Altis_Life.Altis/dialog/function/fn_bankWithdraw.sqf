/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 9999999) exitWith {hint "Du kannst nicht mehr als $9,999,999 abheben";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Das ist kein richtiges Nummernformat..."};
if(_val > life_atmcash) exitWith {hint "So viel Geld hast du nicht auf deinem Bankkonto!"};
if(_val < 50 && life_atmcash > 20000000) exitWith {hint "Du kannst nicht weniger als $50 abheben"}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format ["Du hast von deinem Konto $%1 abgehoben",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequest; //Silent Sync