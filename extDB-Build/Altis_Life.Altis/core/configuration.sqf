#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_sammel_sperre = false; // Halten wir die Buguser mal auf...
life_god = false;
life_frozen = false;
life_markers = false;
life_yelp_active = false;

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,150); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang zeugs
__CONST__(life_gangPrice,50000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 70;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 5;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,100);
__CONST__(life_impound_boat,160);
__CONST__(life_impound_air,250);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 2500; //Starting Bank Money
		life_paycheck = 200; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 3500; //Starting Bank Money
		life_paycheck = 100; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 2000;
		life_paycheck = 75;
	};
	
	case east: {
		life_atmcash = 2000;
		life_paycheck = 75;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_niere",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_handschellen",
	"life_inv_kabelb",
	"life_inv_frosch",
	"life_inv_froschlsd",
	"life_inv_froschbein",
	"life_inv_stacheldraht",
	"life_inv_lagerfeuer",
	"life_inv_wand",
	"life_inv_zelt",
	"life_inv_schranke",
	"life_inv_camonetz",
	"life_inv_roadcone",
	"life_inv_barrier",
	"life_inv_bunker",
	"life_inv_sandbag",
	"life_inv_moonshine",
	"life_inv_wein",
	"life_inv_weintraube",
	"life_inv_skalpell",
	"life_inv_tabak",
	"life_inv_zigarren",
	"life_inv_muell",
	"life_inv_wertstoffe",
	"life_inv_kunststoff",
	"life_inv_schmuck",
	"life_inv_edelmetall",
	"life_inv_schaufel"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_adac","civ"],
	["license_civ_froschlsd","civ"],
	["license_civ_froschbein","civ"],
	["license_adac_driver","adac"],
	["license_civ_weintraube","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_tabak","civ"],
	["license_civ_wertstoffe","civ"],
	["license_civ_kunststoff","civ"],
	["license_civ_edelmetall","civ"],
	["license_civ_leichen","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
life_adaclicenses =
[["license_civ_adac","civ"]];
{missionNamespace setVariable[(_x select 0),false];} foreach life_adaclicenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",90],["goldbar",800],["schmuck",50],["skalpell",500],["niere",900],["moonshine",60],["heroinp",80],["cocaine",60],["cocainep",130],["marijuana",50],["turtle",100],["blastingcharge",500],["boltcutter",100],["froschlsd",60]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",10],
	["heroinu",15],
	["heroinp",120],
	["salema",10],
	["ornate",10],
	["mackerel",15],
	["tuna",6],
	["mullet",6],
	["catshark",190],
	["rabbit",20],
	["oilp",30],
	["turtle",170],
	["water",4],
	["coffee",1],
	["turtlesoup",20],
	["donuts",1],
	["marijuana",90],
	["tbacon",100],
	["lockpick",75],
	["pickaxe",130],
	["redgull",500],
	["peach",10],
	["cocaine",30],
	["cocainep",160],
	["diamond",30],
	["diamondc",140],
	["iron_r",60],
	["copper_r",40],
	["salt_r",30],
	["glass",25],
	["fuelF",10],
	["spikeStrip",50],
	["cement",40],
	["goldbar",12000],
	["handschellen",50],
	["kabelb",50],
	["froschlsd",110],
	["froschbein",90],
	["stacheldraht",400],
	["lagerfeuer",3000],
	["zelt",900],
	["wand",4000],
	["schranke",800],
	["camonetz",3500],
	["bunker",3000],
	["roadcone",10],
	["barrier",100],
	["niere",2500],
	["sandbag",800],
	["moonshine",110],
	["wein",60],
	["weintraube",40],
	["tabak",25],
	["zigarren",40],
	["muell",10],
	["skalpell",500],
	["wertstoffe",20],
	["kunststoff",30],
	["schmuck",30],
	["edelmetall",140],
	["schaufel",1200]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",15],
	["rabbit",40],
	["salema",15],
	["ornate",15],
	["mackerel",20],
	["tuna",20],
	["mullet",15],
	["catshark",300],
	["water",10],
	["turtle",130],
	["turtlesoup",30],
	["donuts",5],
	["coffee",10],
	["tbacon",250],
	["lockpick",200],
	["pickaxe",600],
	["redgull",1500],
	["fuelF",850],
	["peach",15],
	["spikeStrip",100],
	["blastingcharge",10000],
	["boltcutter",7000],
	["defusekit",500],
	["storagesmall",40000],
	["storagebig",1500000],
	["handschellen",60],
	["kabelb",60],
	["froschbein",160],
	["stacheldraht",800],
	["lagerfeuer",30000],
	["zelt",2000],
	["wand",11800],
	["schranke",2400],
	["camonetz",4700],
	["bunker",9000],
	["roadcone",20],
	["barrier",500],
	["niere",4500],
	["sandbag",1500],
	["moonshine",200],
	["wein",100],
	["weintraube",70],
	["skalpell",2500],
	["tabak",30],
	["zigarren",60],
	["muell",30],
	["wertstoffe",10],
	["kunststoff",50],
	["schmuck",90],
	["edelmetall",250],
	["schaufel",2000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
						["SMG_01_F","Taser SMG",500],
						["hgun_P07_snds_F","Taser Pistole",250],
						["muzzle_snds_acp",nil,700],
						["hgun_ACPC2_snds_F",nil,400],
						["hgun_Pistol_heavy_01_F",nil,500],
						["hgun_Pistol_heavy_02_F",nil,600],
						["hgun_PDW2000_F",nil,400],
						["hgun_Pistol_Signal_F",nil,350],
						["SMG_02_F",nil,500],
						["srifle_EBR_F",nil,800],
						["srifle_GM6_F",nil,1000],
						["srifle_GM6_camo_F",nil,1200],
						["srifle_LRR_F",nil,1500],
						["srifle_LRR_camo_F",nil,1500],
						["srifle_DMR_01_F",nil,1200],
						["arifle_MXC_F",nil,1200],
						["arifle_MXC_Black_F",nil,1200],
						["arifle_MX_F",nil,800],
						["arifle_MX_Black_F",nil,800],
						["arifle_MX_SW_F",nil,1500],
						["arifle_MX_SW_Black_F",nil,1500],
						["arifle_MXM_F",nil,2300],
						["arifle_MXM_Black_F",nil,2300],
						["arifle_Katiba_F",nil,1500],
						["arifle_TRG21_F",nil,2000],
						["arifle_TRG20_F",nil,2000],
						["LMG_Mk200_F",nil,3500],
						["LMG_Zafir_F",nil,3500],
						["launch_RPG32_F",nil,5000],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["optic_Holosight",nil,500],
						["optic_Hamr",nil,500],
						["optic_SOS",nil,2000],
						["optic_LRPS",nil,2000],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,2000],
						["optic_Aco",nil,2000],
						["optic_Nightstalker",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRCO",nil,2000],
						["Binocular",nil,150],
						["Rangefinder",nil,550],
						["APERSMine_Range_Mag",nil,150],
						["APERSBoundingMine_Range_Mag",nil,150],
						["SLAMDirectionalMine_Wire_Mag",nil,150],
						["APERSTripMine_Wire_Mag",nil,150],
						["ClaymoreDirectionalMine_Remote_Mag",nil,150],
						["SatchelCharge_Remote_Mag",nil,150],
						["DemoCharge_Remote_Mag",nil,150],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,100],
						["NVGoggles",nil,800],
						["MineDetector",nil,800],
						["B_UAV_01_F",nil,2000],
						["B_UavTerminal",nil,5000],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30],
						["RPG32_F",nil,2000],
						["RPG32_HE_F",nil,2000],
						["HandGrenade_Stone","Flashbang",200],
						["SmokeShellGreen","Tränengas",100],
						["B_IR_Grenade","Sound Granate",100],
						["6Rnd_GreenSignal_F",nil,50],
						["6Rnd_RedSignal_F",nil,50],
						["5Rnd_127x108_Mag",nil,50],
						["5Rnd_127x108_APDS_Mag",nil,50],
						["6Rnd_45ACP_Cylinder",nil,50],
						["7Rnd_408_Mag",nil,50],
						["9Rnd_45ACP_Mag",nil,50],
						["10Rnd_762x51_Mag",nil,50],
						["11Rnd_45ACP_Mag",nil,50],
						["16Rnd_9x21_Mag",nil,20],
						["200Rnd_65x39_cased_Box",nil,20],
						["200Rnd_65x39_cased_Box_Tracer",nil,20],
						["150Rnd_762x51_Box",nil,20],
						["150Rnd_762x51_Box_Tracer",nil,20],
						["100Rnd_65x39_caseless_mag",nil,20],
						["100Rnd_65x39_caseless_mag_Tracer",nil,20],
						["30Rnd_65x39_caseless_mag",nil,20],
						["30Rnd_65x39_caseless_mag_Tracer",nil,20],
						["30Rnd_65x39_caseless_green",nil,20],
						["30Rnd_556x45_Stanag",nil,20],
						["30Rnd_9x21_Mag",nil,20],
						["20Rnd_762x51_Mag",nil,20],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",25]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Quadbike_01_F",10],
	["C_Hatchback_01_F",50],
	["C_Offroad_01_F",75],
	["B_G_Offroad_01_F",95],
	["C_SUV_01_F",100],
	["C_Van_01_transport_F",320],
	["C_Hatchback_01_sport_F",240],
	["C_Van_01_fuel_F",530],
	["I_Heli_Transport_02_F",700],
	["C_Van_01_box_F",360],
	["I_Truck_02_transport_F",450],
	["I_Truck_02_covered_F",570],
	["B_Truck_01_transport_F",630],
	["O_Truck_03_device_F",1500],
	["B_Truck_01_box_F",720],
	["O_MRAP_02_F",400],
	["B_Heli_Light_01_F",1600],
	["O_Heli_Light_02_unarmed_F",1500],
	["C_Rubberboat",50],
	["C_Boat_Civil_01_F",150],
	["B_Boat_Transport_01_F",50],
	["C_Boat_Civil_01_police_F",430],
	["B_Boat_Armed_01_minigun_F",2500],
	["B_SDV_01_F",500],
	["B_MRAP_01_F",400],
	//ab hier bitte mal schauen und eventuell Preise anpassen!
	["O_Truck_03_transport_F",590],
	["O_Truck_03_covered_F",610],
	["C_Kart_01_Blu_F",100],
	["C_Kart_01_Fuel_F",100],
	["C_Kart_01_Red_F",100],
	["C_Kart_01_Vrana_F",100],
	["B_G_Offroad_01_armed_F",600],
	["O_G_Offroad_01_armed_F",600],
	["I_G_Offroad_01_armed_F",600],
	["I_MRAP_03_F",700],
	["B_MRAP_01_hmg_F",750],
	["B_Heli_Transport_01_F",1500],
	["I_Heli_light_03_unarmed_F",1700],
	["O_SDV_01_F",500],
	["I_SDV_01_F",500],
	["I_Boat_Transport_01_F",50],
	["O_Boat_Transport_01_F",50]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",270],
	["C_Hatchback_01_F",550],
	["C_Offroad_01_F", 500],
	["B_G_Offroad_01_F",500],
	["C_SUV_01_F",500],
	["C_Van_01_transport_F",7500],
	["C_Hatchback_01_sport_F",2500],
	["C_Van_01_fuel_F",2850],
	["I_Heli_Transport_02_F",18000],
	["C_Van_01_box_F",13200],
	["I_Truck_02_transport_F",22000],
	["I_Truck_02_covered_F",32000],
	["B_Truck_01_transport_F",58000],
	["O_Truck_03_device_F",73000],
	["B_Truck_01_box_F",119000],
	["O_MRAP_02_F",84000],
	["B_Heli_Light_01_F",19000],
	["O_Heli_Light_02_unarmed_F",36500],
	["C_Rubberboat",420],
	["C_Boat_Civil_01_F",3800],
	["B_Boat_Transport_01_F",420],
	["C_Boat_Civil_01_police_F",3200],
	["B_Boat_Armed_01_minigun_F",142500],
	["B_SDV_01_F",2500],
	["B_MRAP_01_F",3000],
	//ab hier bitte mal schauen und eventuell Preise anpassen!
	["O_Truck_03_transport_F",40000],
	["O_Truck_03_covered_F",43000],
	["C_Kart_01_Blu_F",4000],
	["C_Kart_01_Fuel_F",4000],
	["C_Kart_01_Red_F",4000],
	["C_Kart_01_Vrana_F",4000],
	["B_G_Offroad_01_armed_F",60000],
	["O_G_Offroad_01_armed_F",60000],
	["I_G_Offroad_01_armed_F",60000],
	["I_MRAP_03_F",80000],
	["B_MRAP_01_hmg_F",150000],
	["B_Heli_Transport_01_F",200000],
	["I_Heli_light_03_unarmed_F",160000],
	["O_SDV_01_F",2500],
	["I_SDV_01_F",2500],
	["I_Boat_Transport_01_F",100],
	["O_Boat_Transport_01_F",100]
];
__CONST__(life_garage_sell,life_garage_sell);