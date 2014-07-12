/*

	Updates player clothing by replacing vanilla by custom ones
    by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) == 1) then
		{
			player setObjectTextureGlobal  [0, "textures\polizei_2.paa"]; 
		};
		
                if( (call life_coplevel) == 2) then
		{
			player setObjectTextureGlobal  [0, "textures\polizei_2.paa"]; 
		};

// And for every coplvl a new thing. 
	
	case (playerSide == independent && _uniform == "U_Rangemaster"):
	{
		if( (call life_medlevel) > 3) then
		{
			player setObjectTextureGlobal  [0, "textures\medic_uniform.jpg"];
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\medic_uniform.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
};
