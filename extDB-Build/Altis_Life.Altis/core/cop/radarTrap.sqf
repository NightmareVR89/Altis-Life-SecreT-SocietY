/* author: preller @ freudenhaus <codepreller@gmail.com>
* for Freudenhaus Altis Life
*
* radarTrap.sqf
* a simple script to check if a vehicle is faster then the legal maximum limit. If so it 
* puts the driver on the wanted list.
*
* Please feel free to use and modify it, but remember to credit the author.
*
* PARAMS:
* _this select 0: OBJECT - the radar trap
* _this select 1: INTEGER - radius of the radar trap in meter
* _this select 2: INTEGER - speedlimit
*
* edited by Daniel Larusso 
*/

private ["_radar",
		 "_radar_radius",
		 "_speed_limit",
		 "_BOUNTY_ID_1",
		 "_BOUNTY_ID_2",
		 "_BOUNTY_ID_3",
		 "_SPEED_MESSUREMENT_FACTOR",
		 "_targets",
		 "_vehicle_speed",
		 "_driver",
		 "_pos"
		];

//Parameter
_radar = _this select 0;
_radar_radius = _this select 1;
_speed_limit = _this select 2;

//Bounty IDs 
_BOUNTY_ID_1 = "1213"; //bis 20 km/h über dem limit
_BOUNTY_ID_2 = "1214"; //bis 50 km/h über dem limit
_BOUNTY_ID_3 = "1215"; //ab 51 km/h über dem limit

//Faktor mit dem die Originalgeschwindigkeit für die Berechnung des _radar_delay angepasst wird.
//Soll verhindern, dass ein Fahrzeuge an einer Radarfalle mehrmals geblitzt wird.
_SPEED_MESSUREMENT_FACTOR = 0.85;

//HINWEIS: -in der aktuellen Version werden nur positive Geschwindigkeiten gewertet. (e.G. -1 kmh wird nicht geblitzt).
while {true} do {
    _pos = getPosATL _radar;
    _targets = _pos nearEntities ["Car",_radar_radius];

	//Geschwindigkeit messen bei allen und Verstoesse melden.
	{
		_vehicle_speed = round(speed _x * _SPEED_MESSUREMENT_FACTOR);
		_driver = driver _x;
		if ((_vehicle_speed > _speed_limit) && !(side _driver in [west,independent])) then {
			//bis 50 km/h über dem limit
			if ((_vehicle_speed - _speed_limit) < 50) then {
				//bis 20 km/h über dem limit
				if ((_vehicle_speed - _speed_limit) < 20) then {
					[["0",_driver,_speed_limit,_vehicle_speed],"life_fnc_geblitzt",_driver,false,false] spawn life_fnc_MP;
					sleep 5.0;
				} else {
					[["1",_driver,_speed_limit,_vehicle_speed],"life_fnc_geblitzt",_driver,false,false] spawn life_fnc_MP;
					sleep 5.0;
				};
			} else {
					[["2",_driver,_speed_limit,_vehicle_speed],"life_fnc_geblitzt",_driver,false,false] spawn life_fnc_MP;
					sleep 5.0;
			};
		};
		
	} forEach _targets;

	sleep 2.0;
}