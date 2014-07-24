While{true} do
{



	waituntil{
	((nearestObject [getpos player, "B_IR_Grenade"]) distance player < 10)
	and
	(getpos (nearestObject [getpos player, "B_IR_Grenade"]) select 2 < 0.5)
	[[_curTarget,"soundGranate"],"life_fnc_say3D",nil,false] spawn life_fnc_MP;
};

sleep 5;
};