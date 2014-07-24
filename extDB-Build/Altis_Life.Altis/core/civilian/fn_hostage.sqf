/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_verbrecher","_player"];
_verbrecher = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _verbrecher) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["hostage",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) &&(player getVariable["hostage",FALSE]) && vehicle player == player) exitWith {
			player setVariable["hostage",FALSE,TRUE];
			detach player;
			titleText["Du hast es geschafft dich selbst zu befreien!","PLAIN"];
		};
	};
};

titleText[format["Du wurdest von %1 als Geisel genommen",_verbrecher getVariable["realname",name _verbrecher]],"PLAIN"];
				
while {player getVariable "hostage"} do
{
	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};
	
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "hostage") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["hostage",false,true];
		detach _player;
	};
	
	if(!alive _verbrecher) exitWith {
		player setVariable ["Escorting",false,true];
		detach player;
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	detach player;
};