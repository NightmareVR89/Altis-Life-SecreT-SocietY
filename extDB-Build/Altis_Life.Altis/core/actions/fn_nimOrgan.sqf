/*
	file: fn_takeOrgans.sqf
	author: [midgetgrimm] - www.grimmlife.com
	
	taken from the same idea of robbing script by tonic
*/
private["_unit","_progress","_pgText","_cP"];
_unit = cursorTarget;
_upp = format["Entnehme %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.1;
		_cP = 0.1;
if(isNull _unit) exitWith {}; //if unit is null, than NO
if((_unit getVariable ["missingOrgan",FALSE])) exitWith {};//must not be missing organ already
if((player getVariable ["hatOrgan",FALSE])) exitWith {};//thief must not have already robbed an organ within last 5 mintues
if((animationState _unit != "Incapacitated")) exitWith {};//victim must be knocked out
if(player == _unit) exitWith {};//if the thief is the cursor target(dafuq) than NO
if(!isPlayer _unit) exitWith {};//iff the cursor target is not a player than NO
if(life_inv_niere >= 4) exitWith {hint "Es ist unwahrscheinlich das Du so viele Organe brauchst!"};//if you already have 2 kidneys, then go sell them already, no stockpiling
if(!([true,"niere",1] call life_fnc_handleInv)) exitWith {hint "Du hast kein Platz um irgend welche Organe zu transportiren!"};//if no room for kidney, you cannot take their kidney, duh, waste not want not
life_action_inUse = true;//sets action to true as to prevent kidney spammming!!!!!!!!
player setVariable["hatOrgan",true,true];//sets variable on thief, so as not to consistently take organs, set to 5 minute cooldown
_unit setVariable["missingOrgan",true,true];//sets the missing organ variable so effects can take place
[[player], "life_fnc_hatOrgan", _unit, false] spawn life_fnc_MP;//this then calls the fn_hasOrgan.sqf on the thief

		
while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
				[[player,"niere"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
			};
			sleep 0.27;
			_cP = _cP + 0.1;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText["Aktion abgebrochen","PLAIN"]; life_action_inUse = false;};