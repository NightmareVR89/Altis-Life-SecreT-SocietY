/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber","_headgear"];
_headgear = ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_cash > 0) then
{
	[[life_cash],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	if((headgear player) in _headgear) then 
		{
			[[1,format["Ein maskierter Spieler hat %2 ausgeraubt und $%3 erbeutet",profileName,[life_cash] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		} else {
			[[1,format["%1 hat %2 ausgeraubt und $%3 erbeutet",_robber getVariable["realname",name _robber],profileName,[life_cash] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
	life_cash = 0;
} else
{
		[[2,format["%1 hat kein Geld dabei.",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};