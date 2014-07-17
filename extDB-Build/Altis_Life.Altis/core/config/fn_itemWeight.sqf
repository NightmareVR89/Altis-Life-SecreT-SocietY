/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {4};
	case "heroinp": {2};
	case "cannabis": {4};
	case "marijuana": {2};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {4};
	case "iron_r": {5};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {2};
	case "glass": {2};
	case "diamond": {6};
	case "diamondc": {3};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {8};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {10};
	case "defusekit": {5};
	case "storagesmall": {10};
	case "storagebig": {20};
	case "frosch": {6};
	case "froschlsd": {4};
	case "froschbein": {2};
	case "handschellen": {1};
	case "kabelb": {1};
	default {1};
};
