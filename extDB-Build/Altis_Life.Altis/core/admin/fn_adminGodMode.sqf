#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["Godmode ausgeschaltet","PLAIN"]; titleFadeOut 2;
	player allowDamage true;
} else {
	life_god = true;
	titleText ["Godmode eingeschaltet","PLAIN"]; titleFadeOut 2;
	player allowDamage false;
}; 