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
	case "oilu": {4};
	case "oilp": {2};
	case "heroinu": {4};
	case "heroinp": {2};
	case "cannabis": {2};
	case "marijuana": {1};
	case "apple": {2};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {3};
	case "tuna": {4};
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
	case "copperore": {3};
	case "ironore": {3};
	case "copper_r": {3};
	case "iron_r": {4};
	case "sand": {3};
	case "salt": {2};
	case "salt_r": {1};
	case "glass": {2};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {4};
	case "cocainep": {2};
	case "spikeStrip": {8};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {9};
	case "blastingcharge": {15};
	case "boltcutter": {10};
	case "defusekit": {5};
	case "storagesmall": {10};
	case "storagebig": {20};
	case "frosch": {5};
	case "froschlsd": {2};
	case "froschbein": {1};
	case "handschellen": {1};
	case "kabelb": {1};
	case "stacheldraht": {12};
	case "lagerfeuer": {1};
	case "schranke": {12};
	case "camonetz": {10};
	case "bunker": {20};
	case "roadcone": {1};
	case "barrier": {2};
	case "sandbag": {2};
	case "zelt": {8};
	case "wand": {8};
	case "niere": {15};//15 is the weight
	case "wein": {2};
	case "moonshine": {2};
	case "weintraube": {1};
	case "tabak": {2};
	case "zigarren": {1};
	case "muell": {4};
	case "skalpell": {2};
	case "wertstoffe": {2};
	case "kunststoff": {1};
	case "edelmetall": {3};
	case "schmuck": {4};
	case "schaufel": {4};
	default {1};
};
