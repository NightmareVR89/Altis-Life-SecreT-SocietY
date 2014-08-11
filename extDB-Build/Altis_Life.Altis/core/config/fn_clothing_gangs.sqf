/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Gang shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Ali G Gangshop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,500],
			["U_I_G_Story_Protagonist_F",nil,700],
			["U_I_G_resistanceLeader_F",nil,3500],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
			["U_IG_Guerilla2_3","The Outback Rangler",400],
			["U_NikosBody","Nicos Body",800],
			["U_IG_Guerilla2_1","Schwarzhemd",800],
			["U_IG_Guerilla3_2","Hellbraun",800]
		];
	};
	
	//Hats
	case 1:
	{
		[	
			["H_Bandanna_camo","Camo Bandanna",700],
			["H_Bandanna_surfer","Surfer Bandanna",640],
			["H_Bandanna_gry","Grey Bandanna",320],
			["H_Bandanna_cbr",nil,165],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_Bandanna_mcamo","Sage Bandanna",160],
			["H_Bandanna_camo",nil,650],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_blk",nil,150],
			["H_Cap_blk_CMMG",nil,150],
			["H_Cap_blk_Raven",nil,150],
			["H_Cap_blk_ION",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["H_Hat_camo",nil,425],
			["H_Booniehat_indp",nil,425],
			["H_Booniehat_mcamo",nil,425],
			["H_CrewHelmetHeli_B","Gasmaske",1550]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Balaclava_lowprofile",nil,500],
			["G_Balaclava_combat",nil,500],
			["G_Balaclava_oli",nil,500],
			["G_Bandanna_aviator",nil,400],
			["G_Bandanna_beast",nil,400],
			["G_Bandanna_tan",nil,400],
			["G_Bandanna_sport",nil,400],
			["G_Bandanna_oli",nil,400],
			["G_Bandanna_shades",nil,400]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,1850],
			["V_BandollierB_cbr",nil,4500],
			["V_RebreatherB",nil,3200],
			["V_RebreatherIR",nil,3200],
			["V_RebreatherIA",nil,3200]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_OutdoorPack_blk",nil,300],
			["B_OutdoorPack_tan",nil,300],
			["B_AssaultPack_cbr",nil,550],
			["B_AssaultPack_blk",nil,550],
			["B_AssaultPack_sgg",nil,550],
			["B_AssaultPack_rgr",nil,550],
			["B_AssaultPack_khk",nil,550],
			["B_Kitbag_sgg",nil,800],
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,1100],
			["B_FieldPack_blk",nil,1100],
			["B_TacticalPack_oli",nil,1500],			
			["B_Bergen_sgg",nil,1500],
			["B_Bergen_blk",nil,1500],
			["B_Bergen_rgr",nil,1500]
		];
	};
};