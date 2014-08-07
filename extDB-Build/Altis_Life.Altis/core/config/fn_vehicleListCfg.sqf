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
			["C_Kart_01_Blu_F",5500],
			["C_Kart_01_Fuel_F",5500],
			["C_Kart_01_Red_F",5500],
			["C_Kart_01_Vrana_F",5500]
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
	
	case "med_air_hs": 
	{
		_return = [
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_unarmed_F",1]
		];
	};
	
	case "med_air_fix": 
	{
		_return = [
			["B_Heli_Light_01_F",1],
			["O_Heli_Light_02_unarmed_F",1]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",350],  //25plätze
			["C_Hatchback_01_F",1500], //40plätze
			["C_SUV_01_F",3800],  //50plätze
			["C_Offroad_01_F",4600],  //65plätze
			["C_Van_01_transport_F",8000], //100plätze
			["C_Hatchback_01_sport_F",24000] //45plätze
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",14500],  //150platz
			["I_Truck_02_transport_F",24500], //200Plätze
			["I_Truck_02_covered_F",36000],  //250Plätze
			["O_Truck_03_transport_F",42000], //285Plätze
			["O_Truck_03_covered_F",47000], //300Plätze
			["B_Truck_01_transport_F",62000], //325Plätze
			["O_Truck_03_device_F",120000],//350Plätze
			["B_Truck_01_box_F",180000]  //450Plätze
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",350], //25plätze
			["B_G_Offroad_01_F",4600], //65plätze
			["C_Hatchback_01_sport_F",12000], //45plätze
			["B_Heli_Light_01_F",60000],
			["O_Heli_Light_02_unarmed_F",250000],
			["I_Heli_Transport_02_F",450000],
			["B_Heli_Transport_01_camo_F",703000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["O_MRAP_02_F",35000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",160000]];
			_return set[count _return,
			["I_MRAP_03_F",270000]];
			_return set[count _return,
			["B_APC_Tracked_01_CRV_F",50350000]];
		};
	};
	
	case "cop_car":
	{
		
		if(__GETC__(life_coplevel) > 0) then
		{
			_return set[count _return,
			["C_Offroad_01_F",500]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",2800]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",2400]];
			_return set[count _return,
			["B_MRAP_01_F",3500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",375000]];
		};
	};
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",60000],
			["O_Heli_Light_02_unarmed_F",140000],
			["I_Heli_Transport_02_F",270000]         //Neu
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",17000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",22000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",223000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",174500]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",14000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",19000]];

		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",215000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",162500]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",350000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MBT_01_cannon_F",25000000]];
			_return set[count _return,
			["B_Heli_Attack_01_F",50000000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",500],
			["C_Boat_Civil_01_F",4200],
			["B_SDV_01_F",8000],
			["O_SDV_01_F",8000],
			["I_SDV_01_F",8000]
		];
	};

	case "cop_ship":
	{
		
		_return set[count _return,
		["B_Boat_Transport_01_F",500]];
		_return set[count _return,
		["I_Boat_Transport_01_F",500]];
		_return set[count _return,
		["O_Boat_Transport_01_F",500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Boat_Civil_01_police_F",3500]];

		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_SDV_01_F",5000]];
			_return set[count _return,
			["O_SDV_01_F",5000]];
			_return set[count _return,
			["I_SDV_01_F",5000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",162500]];
		};
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
			["B_Truck_01_transport_F",1]
		];
	};
};

_return;
