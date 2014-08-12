/*file:fn_breathalyzer author:[midgetgrimm] descrip:allows cop to breathalyze player*/
private["_cop","_drinky"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_drinky = life_drink;
if(_drinky > 0.07) then {
[[1,format["Alkoholtest %1 \n\n BAC: %2 \n\n ist Ueber dem erlaubtem Limit! ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
} else {
[[1,format["Alkoholtest %1 \n\n BAC: %2 \n\n Unter dem erlaubtem Limit! ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
};