/*
	File: fn_civLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
private["_vehicle","_lightYellow","_lightleft","_lightright","_leftRed","_brightness1","_brightness2"];
_vehicle = _this select 0;

if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightYellow = [255, 209, 1];

_lightleft = createVehicle ["#lightpoint", (getPos _vehicle), [], 0, "NONE"];
sleep 0.2;
_lightleft setLightColor _lightYellow; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [255, 209, 1];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.46, 0.0, 0.52]];
	};
};

_lightleft setLightAttenuation [0.1, 0, 1000, 130]; 
_lightleft setLightFlareSize 0.34;
_lightleft setLightFlareMaxDistance 100;
_lightleft setLightUseFlare true;

_lightright = createVehicle ["#lightpoint", (getPos _vehicle), [], 0, "NONE"];
sleep 0.2;	
_lightright setLightColor _lightYellow; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [255, 209, 1]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.52]];
	};
};
  
_lightright setLightAttenuation [0.1, 0, 1000, 130]; 
_lightright setLightFlareSize 0.34;
_lightright setLightFlareMaxDistance 100;
_lightright setLightUseFlare true;

_lightleft setLightDayLight true;
_lightright setLightDayLight true;

if(sunOrMoon == 1) then {
_brightness1 = 6;
_brightness2 = 2;
} else {
_brightness1 = 1;
_brightness2 = 0.3;
};

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.03;
		_lightleft setLightBrightness _brightness1;
		sleep 0.02;
		_lightleft setLightBrightness _brightness2; 
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.03;
		_lightright setLightBrightness _brightness1;
		sleep 0.02;
		_lightright setLightBrightness _brightness2; 
	};  
	sleep (_this select 1);  
};

deleteVehicle _lightleft;
deleteVehicle _lightright;