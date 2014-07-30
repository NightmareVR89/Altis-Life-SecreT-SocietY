life_fnc_sidechat =
compileFinal "
	if(life_sidechat) then {life_sidechat = false;} else {life_sidechat = true;};
	[[player,life_sidechat,playerSide],""TON_fnc_managesc"",false,false] spawn life_fnc_MP;
	[] call life_fnc_settingsMenu;
";

publicVariable "life_fnc_sidechat";

fnc_index =
compileFinal "
	private[""_find"",""_limit"",""_select"",""_array"",""_return""];
	_find = _this select 0;
	_array = _this select 1;

	_limit = (count _array)-1;
	for ""_i"" from 0 to _limit do
	{
		_select = _array select _i;
		if((_find in _select) && (isNil {_return})) then
		{
			_return = _i;
		};
	};

	if(isNil {_return}) then {_return = -1;};
	_return;
";

fnc_player_query =
compileFinal "
	private[""_ret""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[[life_atmcash,life_cash,owner player,player],""life_fnc_admininfo"",_ret,false] spawn life_fnc_MP;
";
publicVariable "fnc_player_query";

publicVariable "fnc_index";

clientWireTransfer =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_atmcash = life_atmcash + _val;
	hint format[""%1 hat Ihnen $%2 überwiesen."",_from,[_val] call life_fnc_numberText];
	
";
publicVariable "clientWireTransfer";

fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "fnc_isnumber";

clientGangKick =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent (createGroup civilian);
		hint ""Du wurdest aus der Gang rausgeschmissen."";
		
	};
";
publicVariable "clientGangKick";

clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""%1 hat dir einen Schluessel gegeben für %2"",_giver,_name];
		life_vehicles set[count life_vehicles, _vehicle];
	};
";

publicVariable "clientGetKey";

clientGangLeader =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		hint ""Du wurdest zum neuen Anführer ernannt."";
	};
";

publicVariable "clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";ctrlShow[3022,true];};
		
	[[_msg,name player,5],""clientMessage"",independent,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast eine Nachricht an alle EMS Units gesendet."",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""Du must einen Spieler auswählen um die Nachricht senden zu können!""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du sendest %1 eine Nachricht: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""The Police"";
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du sendest %1 eine Nachricht: %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""The Admins"";
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du sendest %1 eine Nachricht: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""Du bist kein Admin!"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";};
	
	[[_msg,name player,3],""clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Nachricht gesendet an: %1 - Nachricht: %2"",name _to,_msg];
";

fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""Du bist kein Admin!"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";};
	
	[[_msg,name player,4],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Admin Nachricht gesendet an Alle: %1"",_msg];
";

//Zum ADAC
fnc_cell_adacrequest =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3018,false];
	_msg = ctrlText 3003;
	_to = ""ADAC"";
	if(_msg == """") exitWith {hint ""Du musst eine Nachricht eingeben!"";ctrlShow[3017,true];};
	
	[[_msg,name player,6],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Du hast folgenden Hilferuf an den %1 gesendet: %2"",_to,_msg];
	ctrlShow[3018,true];
";
fnc_cell_polizeinachricht =
copileFinal "
	if(isServer) exitWith {};
	if(side player != west) exitWith {hint ""Du bist kein Polizist!"";};
	private[""_msg"",""_to"",""_from""];
	_msg = ctrlText 3003;
	_to = ""Polizei"";
	if(_msg == """") exitWith {hint ""Du must eine Nachricht eingeben zum Senden!"";};
	[[_msg,name player,7],""clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Polizeinachricht an alle gesendet: %1"",_msg];
";

publicVariable "fnc_cell_textmsg";
publicVariable "fnc_cell_textcop";
publicVariable "fnc_cell_textadmin";
publicVariable "fnc_cell_adminmsg";
publicVariable "fnc_cell_adminmsgall";
publicVariable "fnc_cell_emsrequest";
publicVariable "fnc_cell_adacrequest";
publicVariable "fnc_cell_polizeinachricht";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
	5 = medic anfrage
	6 = ADAC Notruf
	7 = Polizei an alle
*/
clientMessage =
compileFinal "
	if(isServer) exitWith {};
	private[""_msg"",""_from"", ""_type""];
	_msg = _this select 0;
	_from = _this select 1;
	_type = _this select 2;
	if(_from == """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format["">>>NACHRICHT VON %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>Neue Nachricht<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Dich<br/><t color='#33CC33'>Von: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""Du hast eine Private Nachricht erhalten %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""---110 POLIZEIRUF %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>Polizeiruf<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Alle Einheiten<br/><t color='#33CC33'>Von: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""PoliceDispatch"",[format[""Neue Polizeimeldung von: %1"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""???ADMIN ANFRAGE VON %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Admin Anfrage<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Alle Admins<br/><t color='#33CC33'>Von: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""AdminDispatch"",[format[""%1 fragt nach einem Admin!"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""!!!ADMIN NACHRICHT: %1"",_msg];
			_admin = format[""Vom Admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Nachricht<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Dich<br/><t color='#33CC33'>Von <t color='#ffffff'>einem Admin<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""Du hast eine Nachricht vom Admin bekommen!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!ADMIN NACHRICHT: %1"",_msg];
			_admin = format[""Vom Admin: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Admin Nachricht<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Alle Spieler<br/><t color='#33CC33'>Von <t color='#ffffff'>den Admins<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""Du hast eine Nachricht von einem Admin erhalten!""]] call bis_fnc_showNotification;
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
		};
		
		case 5 : 
		{
			if((call life_mediclevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""!!!MEDIC ANFRAGE: %1"",_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>Medic Anfrage<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Dich<br/><t color='#33CC33'>Von: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""Medic anfrage von %1"",_from]]] call bis_fnc_showNotification;
		};
		
		case 6 :
		{
			if((call life_adaclevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""??ADAC Hilferuf von %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>ADAC Hilferuf<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>ADAC<br/><t color='#33CC33'>Von: <t color='#ffffff'>%1<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""TextMessage"",[format[""%1 braucht den ADAC!"",_from]]] call bis_fnc_showNotification;
			systemChat _message;
		};
		
		case 7 :
		{
			private[""_message"",""_admin""];
			_message = format[""!!!POLIZEINACHRICHT: %1"",_msg];
			_admin = format[""Vom Polizisten: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Polizeinachricht Nachricht<br/><br/><t color='#33CC33'><t align='left'><t size='1'>An: <t color='#ffffff'>Alle Spieler<br/><t color='#33CC33'>Von <t color='#ffffff'>der Polizei<br/><br/><t color='#33CC33'>Nachricht:<br/><t color='#ffffff'>%1"",_msg];
			
			[""AdminMessage"",[""Du hast eine Nachricht von der Polizei erhalten!""]] call bis_fnc_showNotification;
			systemChat _message;
			if(side player == west) then {systemChat _admin;};
		};
	};
";
publicVariable "clientMessage";