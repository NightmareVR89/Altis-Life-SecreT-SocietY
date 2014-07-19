#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",35000],
			["C_Kart_01_Fuel_F",47000],
			["C_Kart_01_Red_F",61000],
			["C_Kart_01_Vrana_F",65000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",1],
			["C_Hatchback_01_F",1],
			["C_SUV_01_F",1],
			["I_Truck_02_medical_F",1],
			["O_Truck_03_medical_F",1],
			["B_Truck_01_medical_F",1]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_unarmed_F",1],
			["I_Heli_Transport_02_F",1]
		];
	};
	
	case "med_air_fix": {
		_return = [
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_unarmed_F",1],
			["I_Heli_Transport_02_F",1]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",800],
			["C_Hatchback_01_F",3000],
			["C_Offroad_01_F",8000],
			["C_SUV_01_F",9300],
			["C_Hatchback_01_sport_F",12000],
			["C_Van_01_transport_F",17000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",34000],
			["I_Truck_02_transport_F",46500],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",550000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1200],
			["B_G_Offroad_01_F",7500],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",85000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",75000]];
			_return set[count _return,
			["O_G_Offroad_01_armed_F",75000]];
			_return set[count _return,
			["I_G_Offroad_01_armed_F",75000]];
			_return set[count _return,
			["O_MRAP_02_F",750000]];
			_return set[count _return,
			["I_MRAP_03_F",11750000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",1000]];
		
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
		["C_SUV_01_F",3500]];
		};
	};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",5000]];
		};
	};
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",60000],
			["O_Heli_Light_02_unarmed_F",120000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",40000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",20000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",20000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",750000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",2500],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["I_Boat_Transport_01_F",3000],
			["O_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000],
			["O_SDV_01_F",100000],
			["I_SDV_01_F",100000]
		];
	};
	
	case "adac":
	{
		_return =
		[
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_unarmed_F",1],
			["I_Heli_Transport_02_F",1],
			["C_Offroad_01_F",1],
			["C_SUV_01_F",1],
			["B_Truck_01_fuel_F",1],
			["B_Truck_01_Repair_F",1],
			["B_Truck_01_mover_F",1]
		];
	};
};

_return;
