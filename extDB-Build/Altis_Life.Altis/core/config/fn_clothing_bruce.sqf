/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name...
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poor_1","Armenkleidung",100],
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],	
		["U_C_HunterBody_grn","The Hunters Look",450],
		["U_OrestesBody","Surfing On Land",800],
		["U_BG_Guerilla3_1","Dunkel",800],
		["U_C_HunterBody_grn","Hunter",800],
		["U_C_Journalist","Presse",900],
		["U_NikosAgedBody","Büromann",1700]
		];
	};
	
	//Hats
	case 1:
	{
		[

			["H_StrawHat","Straw Fedora",225],
			["H_Booniehat_tan",nil,425],
			["H_Booniehat_khk",nil,425],
			["H_Booniehat_grn",nil,425],
			["H_Booniehat_dirty",nil,425],
			["H_Booniehat_khk_hs",nil,425],
			["H_TurbanO_blk",nil,625],
			["H_StrawHat",nil,525],
			["H_StrawHat_dark",nil,525],
			["H_Hat_blue",nil,425],
			["H_Hat_brown",nil,425],
			["H_Hat_grey",nil,425],
			["H_Hat_checker",nil,425],
			["H_Hat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],			
			["H_Cap_press",nil,150]
			
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
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		["V_Press_F",nil,5000]
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
			["B_Bergen_rgr",nil,1500],
			["B_Carryall_cbr",nil,2300],
			["B_Carryall_oli",nil,2300],
			["B_Carryall_khk",nil,2300]
		];
	};
};