private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_Rangemaster";
player addBackpack "B_Carryall_khk";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;