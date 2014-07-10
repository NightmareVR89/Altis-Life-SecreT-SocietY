/*
	ALAH SNACKBAR!
*/
private["_test","_headgear"];
_headgear = ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk"];
if(vest player != "V_HarnessOGL_brn") exitWith {};
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

if((headgear player) in _headgear) then {
	[[0,format["Ein unbekannter Terrorist hat ein Selbstmordattentat verübt!"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
} else {
	[[0,format["%1 hat seinen Sprengstoffgürtel gezündet!",player getVariable["realname",name player]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};