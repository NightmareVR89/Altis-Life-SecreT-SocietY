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
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","kabelb"]]};
	case "gang": {["Gangmarkt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Spezialitäten",["turtlesoup","turtle","froschbein"]]};
	case "coffee": {["Stratis Kaffeehaus",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","froschlsd"]]};
	case "oil": {["Ölhaendler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glaser",["glass"]]};
	case "iron": {["Altis Industriehändler",["iron_r","copper_r"]]};
	case "diamond": {["Diamantenhändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizeibedarf",["handschellen","donuts","coffee","spikeStrip","roadcone","barrier","sandbag","water","tbacon","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zementhändler",["cement"]]};
	case "adac": {["Mitarbeiterkiosk",["fuelF","water","roadcone","barrier","apple","rabbit","redgull","tbacon"]]};
};