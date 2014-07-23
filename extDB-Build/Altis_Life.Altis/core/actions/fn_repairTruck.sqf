/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	_damage = damage _veh;
	
	if(_damage > 0.5) then {
		if((player distance (getMarkerPos "tank_1") > 30) OR (player distance (getMarkerPos "tank_2") > 30) OR (player distance (getMarkerPos "tank_3") > 30) OR (player distance (getMarkerPos "tank_4") > 30) OR (player distance (getMarkerPos "tank_5") > 30) OR (player distance (getMarkerPos "tank_6") > 30) OR (player distance (getMarkerPos "tank_7") > 30) OR (player distance (getMarkerPos "tank_8") > 30)) then 
		{
			if(playerSide in [civilian,independent,west]) exitWith {hint "Dein Fahrzeug ist zu sehr beschädigt und du bist zu weit von einer Werkstatt entfernt, um es selbst zu reparieren. Rufe am besten den ADAC";};
			if(playerSide == east) exitWith {hint "Bring das Fahrzeug zu einer Werkstatt oder hole den Reparaturtruck um es reparieren zu können.";};
		};
	};

	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Repariere %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			sleep 0.27;
			_cP = _cP + 0.01;
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
		if(player != vehicle player) exitWith {titleText["Du musst außerhalb des Fahrzeugs sein, um es zu reparieren.","PLAIN"];};
		player removeItem "ToolKit";
		_veh setDamage 0;
		titleText["Du hast das Fahrzeug repariert.","PLAIN"];
	};
};