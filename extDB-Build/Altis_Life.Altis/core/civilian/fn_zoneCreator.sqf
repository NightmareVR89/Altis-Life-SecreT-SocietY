/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_weintraubZones","_tabaZones","_muelZones","_leicheZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_froschZones = ["frosch_1"];
_weintraubZones = ["weintraub_1"];
_tabaZones = ["taba_1"];
_muelZones = ["muel_1"];
_leicheZones = ["leiche_1","leiche_2","leiche_3","leiche_4","leiche_5","leiche_6","leiche_7","leiche_8","leiche_9","leiche_10","leiche_11","leiche_12","leiche_13","leiche_14","leiche_15"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Sammle Äpfel',life_fnc_gatherApples,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Sammle Pfirsiche',life_fnc_gatherPeaches,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Sammle Heroin',life_fnc_gatherHeroin,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Sammle Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Sammle Kokain',life_fnc_gatherCocaine,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//blah Frösche und so
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Frosch = player addAction['Fange Frösche',life_fnc_froschFang,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Frosch;"];
} foreach _froschZones;
//Create grape zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Weintraube = player addAction['Sammle Weintrauben',life_fnc_gatherWeintraube,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Weintraube;"];
} foreach _weintraubZones;
//Create tabak
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tabak = player addAction['Sammle Tabak',life_fnc_gatherTabak,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Tabak;"];
} foreach _tabaZones;
//Create wertstoffe
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[100,100,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Muell = player addAction['Sammle Müll',life_fnc_gatherMuell,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Muell;"];
} foreach _muelZones;
//Create Leichen
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[10,10,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Leichen = player addAction['Sammle Müll',life_fnc_gatherLeichen,'',0,false,false,'','!life_sammel_sperre'];","player removeAction LIFE_Action_Leichen;"];
} foreach _leicheZones;