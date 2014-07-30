if(playerSide != east) exitWith {};
private ["_case","_veh"];
_case = _this select 3;

switch (_case) do
{
	case "fahrer":
	{
		player action ["getInDriver", cursorTarget];
	};
	case "einsteigen":
	{
		player action ["getInCargo", cursorTarget];
	};
};