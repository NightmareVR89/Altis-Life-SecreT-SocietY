if(playerSide != east) exitWith {};
private ["_case","_veh"];
_case = _this select 3;

switch (_position) do
{
	case "einsteigen":
	{
		player action ["getInCargo", cursorTarget];
	};
	case "aussteigen":
	{
		_veh = vehicle player;
		player action ["getOut", _veh];
	};
};