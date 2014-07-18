/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Unverarbeitetes Öl"};
	case "life_inv_oilp": {"Verarbeitetes Öl"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Reines Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Schildkrötenfleisch"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkrötensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer Benzinkanister"};
	case "life_inv_fuelF": {"Voller Benzinkanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Verfeinertes Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Ungeschliffener Diamant"};
	case "life_inv_diamondr": {"Geschliffener Diamant"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unverarbeitetes Kokain"};
	case "life_inv_cokep": {"Reines Kokain"};
	case "life_inv_spikeStrip": {"Nagelbrett"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_blastingcharge": {"Sprengladung"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Bombenentschärfungskit"};
	case "life_inv_storagesmall": {"Kleine Lagerbox"};
	case "life_inv_storagebig": {"Grosse Lagerbox"};
	case "life_inv_handschellen": {"Handschellen"};
	case "life_inv_kabelb": {"Kabelbinder"};
	case "life_inv_froschlsd": {"Frosch-LSD"};
	case "life_inv_froschbein": {"Froschschenkel"};
	case "life_inv_frosch": {"Frösche"};
	
	//License Block
	case "license_civ_driver": {"Führerschein"};
	case "license_civ_air": {"Flugschein"};
	case "license_civ_heroin": {"Heroin Ausbildung"};
	case "license_civ_gang": {"Gang Lizenz"};
	case "license_civ_oil": {"Öl Verarbeitung"};
	case "license_civ_dive": {"Tauchschein"};
	case "license_civ_boat": {"Bootsführerschein"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Flugschein"};
	case "license_cop_swat": {"SEK-Ausbildung"};
	case "license_cop_cg": {"Küstenwachenausbildung"};
	case "license_civ_rebel": {"Rebellenausbildung"};
	case "license_civ_truck": {"LKW Führerschein"};
	case "license_civ_diamond": {"Diamantenverarbeitung"};
	case "license_civ_copper": {"Kupferverarbeitung"};
	case "license_civ_iron": {"Eisenverarbeitung"};
	case "license_civ_sand": {"Sandverarbeitung"};
	case "license_civ_salt": {"Salzverarbeitung"};
	case "license_civ_coke": {"Kokain Ausbildung"};
	case "license_civ_marijuana": {"Marijuana Ausbildung"};
	case "license_civ_cement": {"Zementmixerlizenz"};
	case "license_med_air": {"Flugschein"};
	case "license_civ_home": {"Hausbesitzerlizenz"};
	case "license_civ_adac": {"ADAC Mitgliedschaft"};
	case "license_civ_froschlsd": {"Froschquetscher"};
	case "license_civ_froschbein": {"Gourmet-Koch"};
	case "license_adac_driver": {"ADAC-Mitarbeiterausweis"};
};
