private["_object","_index","_texture"];
_object = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_index = [_this,1,0,[0]] call BIS_fnc_param;
_texture = [_this,2,"",[""]] call BIS_fnc_param;
_backpack = [_this,3,0,[0]] call BIS_fnc_param;

if(isNull _object OR _texture == "") exitWith {};
if(_backpack == 0) then {(unitBackpack _object) setObjectTexture [0,""];};
_object setObjectTexture[_index,_texture];