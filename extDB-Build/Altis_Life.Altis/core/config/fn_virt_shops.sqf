/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "wongs": {["Wong's Spezialitaeten",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Kaffeehaus",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oelhaendler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glaser",["glass"]]};
	case "iron": {["Altis Industriehaendler",["iron_r","copper_r"]]};
	case "diamond": {["Diamantenhaendler",["diamond","diamondc"]]};
	case "salt": {["Salzhaendler",["salt_r"]]};
	case "cop": {["Polizeibedarf",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zementhaendler",["cement"]]};
};