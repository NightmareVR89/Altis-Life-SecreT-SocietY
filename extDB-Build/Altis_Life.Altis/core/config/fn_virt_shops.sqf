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
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","lagerfeuer","zelt","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","lagerfeuer","boltcutter","blastingcharge","kabelb","camonetz","zelt","wand"]]};
	case "gang": {["Gangmarkt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","lagerfeuer","blastingcharge","boltcutter","camonetz","zelt","wand"]]};
	case "wongs": {["Wong's Spezialitäten",["turtlesoup","turtle","froschbein","moonshine"]]};
	case "coffee": {["Stratis Kaffeehaus",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","froschlsd"]]};
	case "oil": {["Ölhaendler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glaser",["glass"]]};
	case "iron": {["Altis Industriehändler",["iron_r","copper_r"]]};
	case "diamond": {["Diamantenhändler",["diamond","diamondc"]]};
	case "salt": {["Salzhändler",["salt_r"]]};
	case "cop": {["Polizeibedarf",["handschellen","donuts","coffee","spikeStrip","stacheldraht","roadcone","barrier","sandbag","bunker","schranke","water","tbacon","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zementhändler",["cement"]]};
	case "adac": {["Mitarbeiterkiosk",["fuelF","water","roadcone","barrier","apple","rabbit","redgull","tbacon"]]};
	case "organ": {["Organ Handler",["niere","skalpell"]]};
	case "beer": {["Weingarten",["wein"]]};
	case "tabak": {["Tabak Haus",["tabak","zigarren"]]};
	case "wertstoffe": {["Mülldeponie",["wertstoffe"]]};
	case "kunststoff": {["Kunststoff Händler",["kunststoff"]]};
	case "edelmetall": {["Edelmetall Händler",["edelmetall"]]};
};