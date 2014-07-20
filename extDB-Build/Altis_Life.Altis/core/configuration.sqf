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
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

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
		life_paycheck = 100; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 1000; //Starting Bank Money
		life_paycheck = 50; //Paycheck Amount
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
	"life_inv_roadcone",
	"life_inv_barrier",
	"life_inv_sandbag"
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
	["license_adac_driver","adac"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
life_adaclicenses =
[["license_civ_adac","civ"]];
{missionNamespace setVariable[(_x select 0),false];} foreach life_adaclicenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",50],["goldbar",500],["heroinp",80],["cocaine",35],["cocainep",70],["marijuana",50],["turtle",100],["blastingcharge",500],["boltcutter",100],["froschlsd",60]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",3],
	["heroinu",10],
	["heroinp",35],
	["salema",10],
	["ornate",5],
	["mackerel",15],
	["tuna",6],
	["mullet",6],
	["catshark",90],
	["rabbit",20],
	["oilp",30],
	["turtle",90],
	["water",4],
	["coffee",1],
	["turtlesoup",20],
	["donuts",1],
	["marijuana",25],
	["tbacon",100],
	["lockpick",75],
	["pickaxe",130],
	["redgull",500],
	["peach",4],
	["cocaine",30],
	["cocainep",70],
	["diamond",30],
	["diamondc",60],
	["iron_r",60],
	["copper_r",30],
	["salt_r",20],
	["glass",10],
	["fuelF",10],
	["spikeStrip",50],
	["cement",45],
	["goldbar",12000],
	["handschellen",50],
	["kabelb",50],
	["froschlsd",65],
	["froschbein",40],
	["roadcone",10],
	["barrier",20],
	["sandbag",30]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",10],
	["rabbit",40],
	["salema",15],
	["ornate",10],
	["mackerel",20],
	["tuna",20],
	["mullet",15],
	["catshark",130],
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
	["peach",10],
	["spikeStrip",100],
	["blastingcharge",10000],
	["boltcutter",7000],
	["defusekit",500],
	["storagesmall",40000],
	["storagebig",1500000],
	["handschellen",60],
	["kabelb",60],
	["froschbein",60],
	["roadcone",20],
	["barrier",30],
	["sandbag",40]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",3000],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",200],
	["ToolKit",75],
	["FirstAidKit",30],
	["Medikit",150],
	["NVGoggles",1200],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",50],
	["ItemCompass",30],
	["Chemlight_blue",10],
	["Chemlight_yellow",10],
	["Chemlight_green",10],
	["Chemlight_red",10],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",500],
	["acc_flashlight",200],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",1400],
	["optic_Holosight",730],
	["acc_pointer_IR",1200],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",10],
	["C_Hatchback_01_F",200],
	["C_Offroad_01_F",250],
	["B_G_Offroad_01_F",250],
	["C_SUV_01_F",300],
	["C_Van_01_transport_F",520],
	["C_Hatchback_01_sport_F",480],
	["C_Van_01_fuel_F",730],
	["I_Heli_Transport_02_F",1500],
	["C_Van_01_box_F",930],
	["I_Truck_02_transport_F",500],
	["I_Truck_02_covered_F",1400],
	["B_Truck_01_transport_F",1600],
	["B_Truck_01_box_F", 1800],
	["O_MRAP_02_F",200],
	["B_Heli_Light_01_F",2500],
	["O_Heli_Light_02_unarmed_F",3500],
	["C_Rubberboat",50],
	["C_Boat_Civil_01_F",1500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",2500],
	["B_Boat_Armed_01_minigun_F",4000],
	["B_SDV_01_F",5000],
	["B_MRAP_01_F",900]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 600],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",1200],
	["C_Van_01_transport_F",5000],
	["C_Hatchback_01_sport_F",4500],
	["C_Van_01_fuel_F",2850],
	["I_Heli_Transport_02_F",5000],
	["C_Van_01_box_F",5000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",2000],
	["B_Truck_01_transport_F",3200],
	["B_Truck_01_box_F",5000],
	["O_MRAP_02_F",5000],
	["B_Heli_Light_01_F",7000],
	["O_Heli_Light_02_unarmed_F",11500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",1500],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",3000],
	["B_SDV_01_F",2500],
	["B_MRAP_01_F",3000]
];
__CONST__(life_garage_sell,life_garage_sell);