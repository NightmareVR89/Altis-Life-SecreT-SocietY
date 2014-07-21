#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Polizei Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
		_ret set[count _ret,["U_B_Protagonist_VR","Trainingsanzug",25]];
		_ret set[count _ret,["U_O_Protagonist_VR","Trainingsanzug",25]];
		_ret set[count _ret,["U_I_Protagonist_VR","Trainingsanzug",25]];
		_ret set[count _ret,["U_I_Wetsuit","Tauchanzug",150]];
		_ret set[count _ret,["U_B_Wetsuit","Tauchanzug",150]];
		_ret set[count _ret,["U_O_Wetsuit","Tauchanzug",150]];
		_ret set[count _ret,["U_B_CombatUniform_mcam","Anwaerter",25]];
		};		
		if(__GETC__(life_coplevel) > 1) then
		{
		_ret set[count _ret,["U_Rangemaster","Kommissar",350]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
		_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Hauptkommissar",550]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
		_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Einsatzleiter",550]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
		_ret set[count _ret,["U_B_SpecopsUniform_sgg","Polizei Chef",1550]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
		_ret set[count _ret,["U_KerryBody","Kampfanzug",2550]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then          //Anwärter
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,520]];
		};
		if(__GETC__(life_coplevel) > 2) then         //Kommissar
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then        //HauptKommissar
		{
			_ret set[count _ret,["H_HelmetB_camo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 4) then        //Einsatzleiter
		{
			_ret set[count _ret,["H_HelmetIA",nil,120]];
		};
		if(__GETC__(life_coplevel) > 5) then       //PolizeiChef
		{
			_ret set[count _ret,["H_MilCap_dgtl",nil,120]];
		};
		if(__GETC__(life_coplevel) > 6) then      // SEK
		{
			_ret set[count _ret,["H_Watchcap_sgg",nil,120]];
			_ret set[count _ret,["H_Beret_02",nil,120]];
			_ret set[count _ret,["H_Beret_Colonel",nil,120]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 1) then          //Anwärter
		{
			_ret set[count _ret,["G_Shades_Black",nil,25]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
			_ret set[count _ret,["G_Diving",nil,70]];
		};
		if(__GETC__(life_coplevel) > 2) then         //Kommissar
		{
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
		};
		if(__GETC__(life_coplevel) > 3) then        //HauptKommissar
		{
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
		};
		if(__GETC__(life_coplevel) > 4) then        //Einsatzleiter
		{
			_ret set[count _ret,["G_Aviator",nil,75]];
			_ret set[count _ret,["G_Bandanna_blk",nil,800]];  //Neue Gescihtsmaske
			_ret set[count _ret,["G_Balaclava_blk",nil,1500]]; //Neue Gesichtsmaske
		};
		if(__GETC__(life_coplevel) > 5) then       //PolizeiChef
		{
			_ret set[count _ret,["G_Squares",nil,10]];
		};
		if(__GETC__(life_coplevel) > 6) then      // SEK
		{
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
			_ret set[count _ret,["G_Goggles_VR","VR Brille",550]];
		};
	};
	
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_Rangemaster_belt",nil,500]];
			_ret set[count _ret,["V_BandollierB_rgr",nil,800]];
			_ret set[count _ret,["V_BandollierB_oli",nil,800]];
			_ret set[count _ret,["V_BandollierB_khk",nil,800]];
			_ret set[count _ret,["V_BandollierB_cbr",nil,800]];
			_ret set[count _ret,["V_BandollierB_blk",nil,800]];
			_ret set[count _ret,["V_RebreatherB",nil,2200]];
			_ret set[count _ret,["V_RebreatherIR",nil,2200]];
			_ret set[count _ret,["V_RebreatherIA",nil,2200]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_Chestrig_blk",nil,1500]];
			_ret set[count _ret,["V_Chestrig_khk",nil,1500]];
			_ret set[count _ret,["V_Chestrig_oli",nil,1500]];
			_ret set[count _ret,["V_Chestrig_rgr",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_TacVest_blk",nil,3500]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,3500]];
			_ret set[count _ret,["V_TacVest_brn",nil,3500]];
			_ret set[count _ret,["V_TacVest_camo",nil,3500]];
			_ret set[count _ret,["V_TacVest_khk",nil,3500]];
			_ret set[count _ret,["V_TacVest_oli",nil,3500]];
			_ret set[count _ret,["V_TacVestCamo_khk",nil,3500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,3500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,6000]];
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,6000]];
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,6000]];
			_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,6000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,8000]];
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,8000]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,8000]];
			_ret set[count _ret,["V_PlateCarrierSpec_rgr",nil,8000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["V_BandollierB_khk",nil,8000]];
			_ret set[count _ret,["V_PlateCarrier3_rgr","Polizeiweste",10000]];
		};
	};
	
	//Backpacks
	case 4:
	{	
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["B_OutdoorPack_blk",nil,500]];
			_ret set[count _ret,["B_OutdoorPack_tan",nil,500]];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["B_AssaultPack_cbr",nil,1800]];
			_ret set[count _ret,["B_AssaultPack_blk",nil,1800]];
			_ret set[count _ret,["B_AssaultPack_sgg",nil,1800]];
			_ret set[count _ret,["B_AssaultPack_rgr",nil,1800]];
			_ret set[count _ret,["B_AssaultPack_khk",nil,1800]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["B_Kitbag_sgg",nil,2000]];
			_ret set[count _ret,["B_Kitbag_cbr",nil,2000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_FieldPack_cbr",nil,3500]];
			_ret set[count _ret,["B_FieldPack_blk",nil,3500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["B_TacticalPack_oli",nil,4000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["B_Bergen_sgg",nil,5000]];
			_ret set[count _ret,["B_Bergen_blk",nil,5000]];
			_ret set[count _ret,["B_Bergen_rgr",nil,5000]];
			_ret set[count _ret,["B_Carryall_cbr",nil,9000]];
			_ret set[count _ret,["B_Carryall_oli",nil,9000]];
			_ret set[count _ret,["B_Carryall_khk",nil,9000]];
		};
	};
};

_ret;