#include <macro.h>
waituntil {!isnil "bis_fnc_init"};
//if (isDedicated) exitwith {};
//if (isServer) exitwith {};
//waitUntil { !(isNull player) };
waitUntil { time > 0 };

IL_EV_Count = 0;
IL_Veh_Array = [];

if((str(player) in ["civ_71","civ_72","civ_73","civ_74","civ_75","civ_66","civ_67","civ_68","civ_69","civ_70"])) then {
//cutText ["IgiLoad läd. Bitte warten...","PLAIN",2];
sleep (random 30);

//cutText [Format ["IgiLoad init Player: %1", Player],"PLAIN",2];

_null = [Player] execVM "IgiLoad\IgiLoad.sqf";
waitUntil {scriptDone _null};


sleep (random (IL_Check_Veh_Max - IL_Check_Veh_Min));

{
	if ((typeOf _x) in (IL_Supported_Vehicles_All)) then
	{
		IL_Veh_Array = IL_Veh_Array + [_x];
		_null = [_x] execVM "IgiLoad\IgiLoad.sqf";
		waitUntil {scriptDone _null};
	};
} forEach (vehicles);

cutText ["IgiLoad geladen. Viel Spaß :)","PLAIN",2];

while {true} do 
{
	sleep (IL_Check_Veh_Min + (random (IL_Check_Veh_Max - IL_Check_Veh_Min)));
	
	//Delete vehicles from "IL_Veh_Array" if not in "vehicles"
	{
		if !(_x in vehicles) then
		{
			IL_Veh_Array = IL_Veh_Array - [_x];
		};
	} forEach (IL_Veh_Array);
	{
		if (((typeOf _x) in (IL_Supported_Vehicles_All)) && !(_x in IL_Veh_Array)) then
		{
			IL_Veh_Array = IL_Veh_Array + [_x];
			_null = [_x] execVM "IgiLoad\IgiLoad.sqf";
			waitUntil {scriptDone _null};
		};
	} forEach (vehicles);
};

} else exitWith {};