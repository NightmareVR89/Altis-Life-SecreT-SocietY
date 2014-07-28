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
	case "life_inv_niere": {"Niere"};
	case "life_inv_oilu": {"Unverarbeitetes Öl"};
	case "life_inv_oilp": {"Verarbeitetes Öl"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Reines Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Goldstrieme"};
	case "life_inv_ornate": {"Lyrakaiserfisch"};
	case "life_inv_mackerel": {"Makrelle"};
	case "life_inv_tuna": {"Tunfisch"};
	case "life_inv_mullet": {"Meeräsche"};
	case "life_inv_catshark": {"Katzenhei"};
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
	case "life_inv_wand": {"Holz Wand"};
	case "life_inv_zelt": {"Zelt"};
	case "life_inv_stacheldraht": {"Stacheldraht"};
	case "life_inv_lagerfeuer": {"Lagerfeuer"};
	case "life_inv_schranke": {"Mobile Schranke"};
	case "life_inv_bunker": {"Bunker"};
	case "life_inv_camonetz": {"Camonetz Offen"};
	case "life_inv_roadcone": {"Verkehrshütchen"};
	case "life_inv_barrier": {"Holzbarriere"};
	case "life_inv_sandbag": {"Sandsackmauer"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_wein": {"Wein"};
	case "life_inv_weintraube": {"Weintraube"};
	case "life_inv_skalpell": {"Skalpell"};
	case "life_inv_tabak": {"Tabak"};
	case "life_inv_zigarren": {"Zigarren"};
	case "life_inv_muell": {"Müll"};
	case "life_inv_wertstoffe": {"Wertstoffe"};
	case "life_inv_kunststoff": {"Kunststoff"};
	case "life_inv_edelmetall": {"Edelmetall"};
	
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
	case "license_civ_weintraube": {"Weintrauben-Verarbeitung"};
	case "license_civ_moonshine": {"Moonshine Verarbeitung"};
	case "license_civ_tabak": {"Zigarren Verarbeitung"};
	case "license_civ_wertstoffe": {"Müll Verarbeitung"};
	case "license_civ_kunststoff": {"Kunststoff Verarbeitung"};
	case "license_civ_edelmetall": {"Edelmetall Verarbeitung"};
};
