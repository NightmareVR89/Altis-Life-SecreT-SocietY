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
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];
		if(__GETC__(life_coplevel) > 1) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		_ret set[count _ret,["U_KerryBody",nil,550]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		_ret set[count _ret,["U_KerryBody",nil,550]];
		_ret set[count _ret,["U_I_G_Story_Protagonist_F",nil,550]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		_ret set[count _ret,["U_KerryBody",nil,550]];
		_ret set[count _ret,["U_I_G_Story_Protagonist_F",nil,550]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		_ret set[count _ret,["U_KerryBody",nil,550]];
		_ret set[count _ret,["U_I_G_Story_Protagonist_F",nil,550]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
		_ret set[count _ret,["U_Rangemaster",nil,350]];
		_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,550]];
		_ret set[count _ret,["U_KerryBody",nil,550]];
		_ret set[count _ret,["U_I_G_Story_Protagonist_F",nil,550]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then          //Anwärter
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		
		if(__GETC__(life_coplevel) > 2) then         //Kommissar
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 3) then        //HauptKommissar
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 4) then        //Einsatzleiter
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 5) then       //PolizeiChef
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		if(__GETC__(life_coplevel) > 6) then      // SEK
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,120]];
			_ret set[count _ret,["H_Beret_02",nil,120]];
		};
		if(__GETC__(life_coplevel) > 7) then     // Anti Terror
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_HelmetB_camo",nil,120]];
			_ret set[count _ret,["H_HelmetIA",nil,120]];
			_ret set[count _ret,["H_MilCap_ocamo",nil,120]];
			_ret set[count _ret,["H_MilCap_dgtl",nil,120]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,120]];
			_ret set[count _ret,["H_Beret_02",nil,120]];
			_ret set[count _ret,["H_Beret_Colonel",nil,120]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;