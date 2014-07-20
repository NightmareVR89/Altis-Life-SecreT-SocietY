/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,500],
			["U_I_G_Story_Protagonist_F",nil,700],
			["U_I_G_resistanceLeader_F",nil,4500],
			["U_IG_leader","Guerilla Leader",1340],
			["U_O_SpecopsUniform_ocamo",nil,1500],
			["U_O_PilotCoveralls",nil,610],
			["U_O_CombatUniform_ocamo",nil,830],
			["U_O_GhillieSuit",nil,5000],
			["U_B_GhillieSuit",nil,5000],
			["U_O_PilotCoveralls",nil,4200],
			["U_O_CombatUniform_oucamo",nil,3200],
			["U_O_SpecopsUniform_ocamo",nil,6000],
			["U_I_CombatUniform",nil,5200],
			["U_I_OfficerUniform",nil,5300]			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650]
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
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
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
			["V_HarnessO_brn",nil,7500],
			["V_HarnessOGL_brn","Bombengürtel",28500],
			["V_RebreatherB",nil,3200],
			["V_RebreatherIR",nil,3200],
			["V_RebreatherIA",nil,3200]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,800],
			["B_Kitbag_mcamo",nil,2500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};