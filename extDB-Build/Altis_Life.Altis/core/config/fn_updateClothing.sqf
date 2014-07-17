#include <macro.h>
/*

	Updates player clothing by replacing vanilla by custom ones
    by Audacious

*/

private["_uniform"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\polizei_uniform.paa"];
			if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		};
	};
		case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "textures\Polizei_beamter.paa"];
			if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		};
	};
	
	case (playerSide == independent && _uniform == "U_O_OfficerUniform_ocamo"):
	{
		if(__GETC__(life_medicLevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\medic_uniform.jpg"];
			if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		};
	};
};
