#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitäter"};
			default {
				["Hospital Medic Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 1): 
			{
				["Anwaerter Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",500],
						["16Rnd_9x21_Mag",nil,50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,100],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2): 
			{
				["Kommissar",
					[
						["SMG_01_F","Taser SMG",800],
						["30Rnd_45ACP_Mag_SMG_01","Taser SMG Magazine",25],
						["hgun_P07_snds_F","Taser Pistole",500],
						["16Rnd_9x21_Mag","Taser Magazin",30],
						["SMG_02_F",nil,1500],
						["30Rnd_9x21_Mag",nil,200],
						["arifle_MXC_F",nil,3200],
						["arifle_MXC_Black_F",nil,3200],
						["arifle_MX_F",nil,2000],
						["arifle_MX_Black_F",nil,2000],
						["arifle_MX_SW_F",nil,3500],
						["arifle_MX_SW_Black_F",nil,3500],
						["arifle_MX_GL_F",nil,5000], // Mit Granatenwerfer für Smoke und Licht
						["acc_pointer_IR",nil,800],
						["acc_flashlight",nil,300],
						["optic_Holosight",nil,200],
						["optic_Hamr",nil,1000],
						["optic_ACO_grn",nil,500],
						["UGL_FlareWhite_F",nil,200],
						["UGL_FlareGreen_F",nil,200],
						["UGL_FlareRed_F",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["1Rnd_Smoke_Grenade_shell",nil,150],
						["1Rnd_SmokeRed_Grenade_shell",nil,150],
						["1Rnd_SmokeOrange_Grenade_shell",nil,150],
						["SmokeShellGreen","Tränengas",300],
						["HandGrenade",nil,200],
						["30Rnd_65x39_caseless_mag",nil,80],
						["30Rnd_65x39_caseless_mag_Tracer",nil,80],
						["100Rnd_65x39_caseless_mag",nil,60],
						["100Rnd_65x39_caseless_mag_Tracer",nil,60],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,100],
						["NVGoggles",nil,1500],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3): 
			{
				["HauptKommissar",
					[
						["SMG_01_F","Taser SMG",800],
						["30Rnd_45ACP_Mag_SMG_01","Taser SMG Magazine",25],
						["hgun_P07_snds_F","Taser Pistole",500],
						["16Rnd_9x21_Mag","Taser Magazin",30],
						["SMG_02_F",nil,1500],
						["30Rnd_9x21_Mag",nil,200],
						["arifle_MXC_F",nil,3200],
						["arifle_MXC_Black_F",nil,3200],
						["arifle_MX_F",nil,2000],
						["arifle_MX_Black_F",nil,2000],
						["arifle_MX_SW_F",nil,3500],
						["arifle_MX_SW_Black_F",nil,3500],
						["arifle_MX_GL_F",nil,5000], // Mit Granatenwerfer für Smoke und Licht
						["srifle_EBR_F",nil,8000],   //Einfache Sniper
						["acc_pointer_IR",nil,800],
						["acc_flashlight",nil,300],
						["optic_Holosight",nil,200],
						["optic_Hamr",nil,1000],
						["optic_ACO_grn",nil,500],
						["optic_SOS",nil,2700],						//Einfaches Sniper visier
						["UGL_FlareWhite_F",nil,200],
						["UGL_FlareGreen_F",nil,200],
						["UGL_FlareRed_F",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["1Rnd_Smoke_Grenade_shell",nil,150],
						["1Rnd_SmokeRed_Grenade_shell",nil,150],
						["1Rnd_SmokeOrange_Grenade_shell",nil,150],
						["SmokeShellGreen","Tränengas",300],
						["HandGrenade",nil,200],
						["20Rnd_762x51_Mag",nil,50],
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1500],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4): 
			{
				["Einsatzleiter",
					[
						["SMG_01_F","Taser SMG",800],
						["30Rnd_45ACP_Mag_SMG_01","Taser SMG Magazine",25],
						["hgun_P07_snds_F","Taser Pistole",500],
						["16Rnd_9x21_Mag","Taser Magazin",30],
						["SMG_02_F",nil,1500],
						["30Rnd_9x21_Mag",nil,200],
						["arifle_MXC_F",nil,3200],
						["arifle_MXC_Black_F",nil,3200],
						["arifle_MX_F",nil,2000],
						["arifle_MX_Black_F",nil,2000],
						["arifle_MX_SW_F",nil,3500],
						["arifle_MX_SW_Black_F",nil,3500],
						["arifle_MX_GL_F",nil,5000], // Mit Granatenwerfer für Smoke und Licht
						["srifle_EBR_F",nil,8000],   //Einfache Sniper
						["srifle_GM6_F",nil,12000],         //Mittlere Sniper
						["acc_pointer_IR",nil,800],
						["acc_flashlight",nil,300],
						["optic_Holosight",nil,200],
						["optic_Hamr",nil,1000],
						["optic_ACO_grn",nil,500],
						["optic_SOS",nil,2700],        //Einfaches Sniper visier
						["UGL_FlareWhite_F",nil,200],
						["UGL_FlareGreen_F",nil,200],
						["UGL_FlareRed_F",nil,200],
						["UGL_FlareYellow_F",nil,200],
						["1Rnd_Smoke_Grenade_shell",nil,150],
						["1Rnd_SmokeRed_Grenade_shell",nil,150],
						["1Rnd_SmokeOrange_Grenade_shell",nil,150],
						["SmokeShellGreen","Tränengas",300],
						["HandGrenade_Stone","Flashbang",500],   // Flashbang
						["HandGrenade",nil,200],
						["5Rnd_127x108_Mag",nil,200],
						["5Rnd_127x108_APDS_Mag",nil,200],
						["20Rnd_762x51_Mag",nil,50],
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5): 
			{
				["Polizei Chef",
					[
						["SMG_01_F","Taser Rifle",800],
						["hgun_P07_snds_F","Stun Pistol",500],
						["arifle_SDAR_F","Unterwasser",1500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6): 
			{
				["SEK",
					[
						["SMG_01_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_F",nil,40000],
						["arifle_MXM_F",nil,50000],
						["srifle_EBR_F",nil,70000],
						["acc_pointer_IR",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_SOS",nil,5000],
						["HandGrenade_Stone","Flashbang",1700],
						["SmokeShellGreen","Tränengas",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["20Rnd_762x51_Mag",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
						
					]
				];
			};
			case (__GETC__(life_coplevel) == 7): 
			{
				["Anti Terror",   //Hier sind alle Waffen Ohne aufsätze inkl Muni
					[
						["SMG_01_F","Taser Rifle",800],
						["hgun_P07_snds_F","Stun Pistol",500],
						["hgun_ACPC2_snds_F",nil,800],
						["hgun_Pistol_heavy_01_F",nil,1000],
						["hgun_Pistol_heavy_02_F",nil,1200],
						["hgun_PDW2000_F",nil,700],
						["hgun_Pistol_Signal_F",nil,650],
						["SMG_02_F",nil,1500],
						["srifle_EBR_F",nil,8000],
						["srifle_GM6_F",nil,10000],
						["srifle_LRR_F",nil,15000],
						["srifle_DMR_01_F",nil,12000],
						["arifle_MXC_F",nil,3200],
						["arifle_MXC_Black_F",nil,3200],
						["arifle_MX_F",nil,2000],
						["arifle_MX_Black_F",nil,2000],
						["arifle_MX_SW_F",nil,3500],
						["arifle_MX_SW_Black_F",nil,3500],
						["arifle_MXM_F",nil,4300],
						["arifle_MXM_Black_F",nil,4300],
						["arifle_Katiba_F",nil,3500],
						["arifle_TRG21_F",nil,5000],
						["arifle_TRG20_F",nil,5000],
						["LMG_Mk200_F",nil,6500],
						["LMG_Zafir_F",nil,6500],
						["launch_RPG32_F",nil,20000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1500],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Nightstalker",nil,15000],
						["optic_NVS",nil,15000],
						["optic_MRCO",nil,5000],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,100],
						["NVGoggles",nil,2000],
						["MineDetector",nil,2000],
						["B_UAV_01_F",nil,4000],
						["B_UavTerminal",nil,15000],
						["Chemlight_red",nil,30],
						["Chemlight_yellow",nil,30],
						["Chemlight_green",nil,30],
						["Chemlight_blue",nil,30],
						["RPG32_F",nil,2000],
						["RPG32_HE_F",nil,2000],
						["HandGrenade_Stone","Flashbang",500],
						["SmokeShellGreen","Tränengas",300],
						["6Rnd_GreenSignal_F",nil,200],
						["6Rnd_RedSignal_F",nil,200],
						["5Rnd_127x108_Mag",nil,200],
						["5Rnd_127x108_APDS_Mag",nil,200],
						["6Rnd_45ACP_Cylinder",nil,200],
						["7Rnd_408_Mag",nil,200],
						["9Rnd_45ACP_Mag",nil,200],
						["10Rnd_762x51_Mag",nil,200],
						["11Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["200Rnd_65x39_cased_Box",nil,200],
						["200Rnd_65x39_cased_Box_Tracer",nil,200],
						["150Rnd_762x51_Box",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,200],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_green",nil,200],
						["30Rnd_556x45_Stanag",nil,200],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_762x51_Mag",nil,200],
						["30Rnd_45ACP_Mag_SMG_01","Taser Rifle Magazine",125]
					]
				];
			};
			default
			{
				["Rookie Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};


	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenausbildung!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_ACPC2_snds_F",nil,2000],
						["hgun_Pistol_heavy_01_F",nil,2000],
						["hgun_Pistol_heavy_02_F",nil,2000],
						["hgun_PDW2000_F",nil,2000],
						["hgun_Pistol_Signal_F",nil,2000],
						["SMG_02_F",nil,2000],
						["srifle_EBR_F",nil,35000],
						["srifle_GM6_F",nil,45000],
						["srifle_LRR_F",nil,60000],
						["srifle_DMR_01_F",nil,40000],
						["arifle_MXC_F",nil,40000],
						["arifle_MXC_Black_F",nil,40000],
						["arifle_MX_F",nil,40000],
						["arifle_MX_Black_F",nil,40000],
						["arifle_MX_SW_F",nil,40000],
						["arifle_MX_SW_Black_F",nil,40000],
						["arifle_MXM_F",nil,40000],
						["arifle_MXM_Black_F",nil,40000],
						["arifle_Katiba_F",nil,40000],
						["arifle_TRG21_F",nil,40000],
						["arifle_TRG20_F",nil,40000],
						["LMG_Mk200_F",nil,40000],
						["LMG_Zafir_F",nil,40000],
						["launch_RPG32_F",nil,40000],
						["acc_pointer_IR",nil,1000],
						["acc_flashlight",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_SOS",nil,10000],
						["optic_Arco",nil,5000],
						["optic_DMS",nil,5000],
						["optic_Aco",nil,5000],
						["optic_NVS",nil,15000],
						["optic_MRCO",nil,5000],
						["Binocular",nil,150],
						["Rangefinder",nil,150],
						["ItemGPS",nil,100],
						["ItemMap",nil,100],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["RPG32_F",nil,2000],
						["SmokeShellGreen","Tränengas",1700],
						["6Rnd_GreenSignal_F",nil,200],
						["6Rnd_RedSignal_F",nil,200],
						["5Rnd_127x108_Mag",nil,200],
						["5Rnd_127x108_APDS_Mag",nil,200],
						["6Rnd_45ACP_Cylinder",nil,200],
						["7Rnd_408_Mag",nil,200],
						["9Rnd_45ACP_Mag",nil,200],
						["10Rnd_762x51_Mag",nil,200],
						["11Rnd_45ACP_Mag",nil,200],
						["200Rnd_65x39_cased_Box",nil,200],
						["200Rnd_65x39_cased_Box_Tracer",nil,200],
						["150Rnd_762x51_Box",nil,200],
						["150Rnd_762x51_Box_Tracer",nil,200],
						["100Rnd_65x39_caseless_mag",nil,200],
						["100Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_mag",nil,200],
						["30Rnd_65x39_caseless_mag_Tracer",nil,200],
						["30Rnd_65x39_caseless_green",nil,200],
						["30Rnd_556x45_Stanag",nil,200],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_762x51_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,3250],
						["hgun_ACPC2_F",nil,4000],
						["optic_ACO_grn_smg",nil,800],
						["V_Rangemaster_belt",nil,1600],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du hast nichts fuer unseren Server gespendet!"};
			case (__GETC__(life_donator) == 1):
			{
				["Spender Shop Stufe 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_SDAR_F",nil,10000],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["20Rnd_556x45_UW_mag",nil,225],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Spender Shop Stufe 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["Spender Shop Stufe 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			default
			{
				["Gangversteck Waffenhändler",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "adac":
	{
		["ADAC Mitarbeitershop",
			[
				["Binocular",nil,50],
				["ItemGPS",nil,100],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,800],
				["Chemlight_red",nil,30],
				["Chemlight_yellow",nil,30],
				["Chemlight_green",nil,30],
				["Chemlight_blue",nil,30]
			]
		];	
	};
};
