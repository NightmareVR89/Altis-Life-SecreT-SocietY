/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {350}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {10000}; //Pilot/air license cost
	case "gun": {4000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {5000}; //Oil processing license cost
	case "cair": {9000}; //Cop Pilot License cost
	case "swat": {1000000}; //Swat License cost
	case "cg": {800}; //Coast guard license cost
	case "heroin": {15000}; //Heroin processing license cost
	case "marijuana": {9000}; //Marijuana processing license cost
	case "medmarijuana": {7500}; //Medical Marijuana processing license cost
	case "gang": {30000}; //Gang license cost
	case "rebel": {15000}; //Rebel license cost
	case "truck": {6000}; //Truck license cost
	case "diamond": {19000};
	case "salt": {7000};
	case "cocaine": {19000};
	case "sand": {4000};
	case "iron": {9500};
	case "copper": {6000};
	case "cement": {6500};
	case "mair": {1};
	case "home": {30000};
	case "adac": {5000};
	case "froschbein": {8750}; //ÄNDERN BITTE!
	case "froschlsd": {10000}; //ÄNDERN BITTE!
	case "adacdrive": {1};
	case "moonshinel": {5000};
	case "weintraubel": {1500};
	case "tabakl": {3000};
	case "wertstoffel": {7000};
	case "kunststoffl": {9000};
	case "edelmetalll": {15000};
	case "leichens": {11000};
};