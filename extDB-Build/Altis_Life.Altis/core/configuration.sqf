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
life_respawn_timer = 3; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

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
life_eat_donuts = 3;

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
__CONST__(life_paycheck_period,30); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 1000; //Starting Bank Money
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
	"life_inv_storagebig"
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
	["license_civ_adac","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
life_adaclicenses =
[["license_civ_adac","civ"]];
{missionNamespace setVariable[(_x select 0),false];} foreach life_adaclicenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",50],["heroinp",80],["cocaine",35],["cocainep",70],["marijuana",50],["turtle",100],["blastingcharge",500],["boltcutter",100]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",2],
	["heroinu",30],
	["heroinp",10],
	["salema",8],
	["ornate",5],
	["mackerel",15],
	["tuna",10],
	["mullet",6],
	["catshark",100],
	["rabbit",20],
	["oilp",30],
	["turtle",100],
	["water",3],
	["coffee",3],
	["turtlesoup",25],
	["donuts",2],
	["marijuana",20],
	["tbacon",100],
	["lockpick",75],
	["pickaxe",130],
	["redgull",1000],
	["peach",3],
	["cocaine",80],
	["cocainep",120],
	["diamond",170],
	["diamondc",300],
	["iron_r",50],
	["copper_r",30],
	["salt_r",20],
	["glass",20],
	["fuelF",10],
	["spikeStrip",120],
	["cement",16],
	["goldbar",300]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",4],
	["rabbit",40],
	["salema",15],
	["ornate",10],
	["mackerel",23],
	["tuna",17],
	["mullet",13],
	["catshark",130],
	["water",6],
	["turtle",130],
	["turtlesoup",32],
	["donuts",5],
	["coffee",7],
	["tbacon",140],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",250],
	["blastingcharge",2000],
	["boltcutter",1850],
	["defusekit",500],
	["storagesmall",5000],
	["storagebig",150000]
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
	["ItemMap",18],
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
	["B_QuadBike_01_F",20],
	["C_Hatchback_01_F",200],
	["C_Offroad_01_F", 350],
	["B_G_Offroad_01_F",350],
	["C_SUV_01_F",500],
	["C_Van_01_transport_F",620],
	["C_Hatchback_01_sport_F",680],
	["C_Van_01_fuel_F",730],
	["I_Heli_Transport_02_F",1500],
	["C_Van_01_box_F",930],
	["I_Truck_02_transport_F",10000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",16000],
	["B_Truck_01_box_F", 18000],
	["O_MRAP_02_F",20000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",40000],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);