/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiß";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blau / Weiß"};
			case 6: {_color = "Schwarz"};
			case 7: {_color = "Taxi"};
			case 8: {_color = "Polizei"};
			case 9: {_color = "Blau"};
			case 10: {_color = "Notarzt"};
			case 11: {_color = "ADAC"};
			case 12: {_color = "ADAC1"};
		};
	};
	case "C_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC2"};
			case 1: {_color = "ADAC3"};
		};
	};
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkelblau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Notarzt"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkelblau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiß"};
			case 4: {_color = "Hellbraun"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Schwarz"};
			case 7: {_color = "Polizei"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei";};
			case 1: {_color = "Schwarz";};
			case 2: {_color = "Silber";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Medic";};
			case 5: {_color = "SEK";};
			case 6: {_color = "ADAC1";};
			case 7: {_color = "ADAC2";};
			case 8: {_color = "ADAC3";};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei";};
		};
	};
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Digi Wüste"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Digi Grün"};
			case 7: {_color = "Jäger Camo"};
			case 8: {_color = "Rebellen Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Civ Blau"};
			case 3: {_color = "Civ Rot"};
			case 4: {_color = "Digi Grün"};
			case 5: {_color = "Blaue Linie"};
			case 6: {_color = "Elliptisch"};
			case 7: {_color = "Wütend"};
			case 8: {_color = "Jeans Blau"};
			case 9: {_color = "Schnelle Rote Linie"};
			case 10: {_color = "Sonnenuntergang"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Blaue Wellen"};
			case 13: {_color = "Rebellen Digital"};
			case 14: {_color = "Medic"};
			case 15: {_color = "Weiß"};
			case 16: {_color = "ADAC"};
			case 17: {_color = "ADAC1"};

		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiß / Blau"};
			case 2: {_color = "Digi Grün"};
			case 3: {_color = "Wüste Digi"};
			case 4: {_color = "Polizei"};
			case 5: {_color = "Sanitäter"};
			case 6: {_color = "ADAC"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "SEK1"};
			case 3: {_color = "SEK2"};
		};
	};
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Sanitäter"};
		};
	};
};

_color;