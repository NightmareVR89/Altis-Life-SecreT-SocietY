/*
	File: fn_adacInteractionMenu.sqf
	Based on fn_copInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various ADAC actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4"];
if(!dialog) then {
	createDialog "pInteraction_Menu_adac";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
		
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
life_pInact_curTarget = _curTarget;

//Überprüfe ADAC-Mitgliedschaft
_Btn1 ctrlSetText localize "STR_adacpInAct_checkMembership";
_Btn1 buttonSetAction "[[player],""life_fnc_adacLicenseCheck"",life_pInact_curTarget,FALSE] spawn life_fnc_MP";

/*
// Deaktiviert bis die Funktionen eingebaut sind!

//Gebe Mitgliedschaft an Target
_Btn2 ctrlSetText localize "STR_adacpInAct_sellMembership";
_Btn2 buttonSetAction "[[4],""life_fnc_removeLicenses"",life_pInact_curTarget,false] spawn life_fnc_MP";

//Entziehe dem Target die Mitgliedschaft
_Btn3 ctrlSetText localize "STR_adacpInAct_takeMembership";
_Btn3 buttonSetAction "[[5],""life_fnc_removeLicenses"",life_pInact_curTarget,false] spawn life_fnc_MP";
*/
//Stelle Rechnung aus
_Btn4 ctrlSetText localize "STR_adacpInAct_TicketBtn";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_rechnungAction;";
