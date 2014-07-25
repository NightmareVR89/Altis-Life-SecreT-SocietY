/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["oilp", 30, 5, 50, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["iron_r", 60, 20, 70, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["diamondc", 75, 50, 90, 5, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["copper_r", 40, 10, 50, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["salt_r", 30, 10, 40, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["glass", 25, 5, 40, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 40, 5, 50, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["apple", 40, 5, 50, 2, 1, 
		[ 
			["turtlesoup",1], 
			["peach",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["turtlesoup", 40, 5, 50, 2, 1, 
		[ 
			["apple",1], 
			["peach",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["peach", 40, 5, 50, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["froschbein", 40, 5, 50, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["wein", 40, 5, 50, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["froschbein",1],
			["weintrauben",1]
		] 
	],
	
	["weintrauben", 40, 5, 50, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["froschbein",1],
			["wein",1]
		] 
	],
	
	["turtle", 90, 40, 110, 20, 18,  
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 45, 10, 50, 7, 5,   
		[ 
			["cocainep",1],
			["turtle",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 70, 30, 80, 9, 8,   
		[ 
			["turtle",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 55, 20, 60, 6, 8,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["turtle",1]
		] 
	],
	["froschlsd", 65, 30, 70, 7, 8,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["turtle",1],
			["heroinp",1]
		] 
	],
	["moonshine", 85, 15, 90, 8, 8,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["turtle",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};