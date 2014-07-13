/*
	File: fn_rechnungPay.sqf
	Based on: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_rechnung_val} OR isNil {life_rechnung_adac}) exitWith {};
if(life_cash < life_rechnung_val) exitWith
{
	if(life_atmcash < life_rechnung_val) exitWith 
	{
		hint "Du hast nicht genug Geld auf deinem Konto oder in Bar dabei um die Rechnung zu bezahlen.";
		[[1,format["%1 konnte die Rechnung nicht bezahlen, da %1 nicht genug Geld dafür hat.",profileName]],"life_fnc_broadcast",life_rechnung_adac,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast die Rechnung in Höhe von $%1 bezahlt",[life_rechnung_val] call life_fnc_numberText];
	life_atmcash = life_atmcash - life_rechnung_val;
	life_ticket_paid = true;
	[[0,format["%1 hat die Rechnung in Höhe von $%2 bezahlt",profileName,[life_rechnung_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	closeDialog 0;
};

life_cash = life_cash - life_rechnung_val;
life_rechnung_paid = true;

[[0,format["%1 hat die Rechnung in Höhe von $%2 bezahlt",profileName,[life_rechnung_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
[[1,format["%1 hat die Rechnung bezahlt.",profileName]],"life_fnc_broadcast",life_rechnung_adac,false] spawn life_fnc_MP;
[[[life_rechnung_val],{life_atmcash = life_atmcash + (_this select 0);}],"BIS_fnc_call",life_rechnung_adac,false] spawn life_fnc_MP;