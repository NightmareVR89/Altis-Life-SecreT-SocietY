#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"], 50];
_units = _units - [player];

{
	private["_name", "_text", "_icon", "_hasName"];
	_name = _x getVariable ["realname", name _x];
	_hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};

	_idc = _ui displayCtrl (iconID + _forEachIndex);

	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};

		_sPos = worldToScreen _pos;
		_distance = _pos distance player;

		if(count _sPos > 1 && {_distance < 25}) then {
			_text = "";
			_icon = "";

			switch (true) do {
				//My Group
				case (_x in (units grpPlayer) && playerSide == civilian): {
					_text = format["<t color='#00FF00'>%1</t>", _name];
				};

				//Dead Players
				case (!alive _x): {
					_text = format["<t color='#000000'>%1</t>", _name];
				};

				//Cops
				case(_x getVariable["coplevel", 0] > 0) : {
					switch (_x getVariable["coplevel", 0]) do {
						case (1) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\private_gs.paa";};
						case (2) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa";};
						case (3) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa";};
						case (4) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\lieutenant_gs.paa";};
						case (5) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\captain_gs.paa";};
						case (6) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";};
						case (7) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";};
						default {};
					};

					_text = format["<t color='#0000FF'><img image='%2' size='1'></img> %1</t>", _name, _icon];
				};

				//Medics
				case(_x getVariable["medlevel", 0] > 0): {
					_icon = "a3\UI_F\data\GUI\Cfg\Ranks\major_gs.paa";
					_text = format["<t color='#FF0000'><img image='%2' size='1'></img> %1</t>", _name, _icon];
				};

				//Admins
				case(_x getVariable["adminlevel", 0] > 0): {
					_icon = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";
					_text = format["<t color='#FFFF00'><img image='%2' size='1'></img> %1</t>", _name, _icon];
				};				

				//Others
				default {
					private["_headgear"];
					_headgear = ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk"];
					if((headgear _x) in _headgear) then {
						_text = format["<t color='#00FF00'>Maskierter Spieler</t>"];
					} else {
						//Others with gang
						if(!isNil {(group _x) getVariable "gang_name"}) then {
							_groupname = (group _x) getVariable ["gang_name",""];
							_text = format["<t color='#B6B6B6'>%1</t><br/><t size='0.8' color='#B6B6B6'>%2</t>", _name, _groupname];
						//Normaly Civilians
						} else {
							_text = format["<t color='#FFFFFF'>%1</t>", _name];
						};
					};
				};
			};

			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;