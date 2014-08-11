/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["goldbar", 32000, 23000, 160000, 1, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["oilp",1],
			["edelmetall",1],
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]			
		] 
	],
	["oilp", 170, 20, 5200, 2, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["iron_r", 150, 20, 4700, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["diamondc", 240, 40, 12600, 3, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["copper_r", 130, 10, 3700, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1],
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["muell", 110, 10, 3400, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["wertstoffe", 140, 10, 4200, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["muell",1],
			["edelmetall",1],
			["copper_r",1] 
		] 
	],
	
	["kunststoff", 160, 10, 6000, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["edelmetall",1],
			["muell",1]
		]
	],
	
	["edelmetall", 230, 40, 9000, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["salt_r", 90, 10, 2500, 2, 1, 
		[ 
			["turtlesoup",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["glass", 80, 5, 1700, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 70, 5, 2400, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["apple", 10, 5, 20, 2, 1, 
		[ 
			["turtlesoup",1], 
			["froschbein",1],
			["wein",1],
			["mullet",1],
			["tuna",1],
			["weintrauben",1]
		] 
	],
	
	["turtlesoup", 210, 5, 5000, 2, 1, 
		[ 
			["apple",1], 
			["peach",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["peach", 10, 5, 20, 2, 1, 
		[  
			["turtlesoup",1],
			["froschbein",1],
			["wein",1],
			["mackerel",20],
			["weintrauben",1]
		] 
	],
	
	["froschbein", 120, 10, 1800, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["mackerel", 40, 5, 800, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["apple",1],
			["tuna",1],
			["mullet",1]
		] 
	],
	
	["mullet", 30, 5, 900, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["apple",1],
			["tuna",1],
			["mackrele",1]
		] 
	],
	
	["ornate", 45, 5, 1100, 2, 1, 
		[ 
			["salema",1], 
			["peach",1],
			["apple",1],
			["mackrele",1]
		] 
	],
	
	["salema", 30, 5, 1400, 2, 1, 
		[ 
			["ornate",1], 
			["mullet",1],
			["peach",1],
			["tuna",1],
			["mackrele",1]
		] 
	],
	
	["tuna", 40, 1, 900, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["peach",1],
			["mackerel",1],
			["mullet",1]
		] 
	],
	
	["wein", 120, 5, 2700, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["froschbein",1],
			["weintrauben",1]
		] 
	],
	
	["weintraube", 60, 5, 1200, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["froschbein",1],
			["wein",1]
		] 
	],
	
	["tabak", 90, 5, 1600, 2, 1, 
		[  
			["turtlesoup",1],
			["niere",1],
			["froschbein",1],
			["wein",1]
		] 
	],
	
	["zigarren", 110, 5, 3300, 2, 1, 
		[ 
			["wein",1],
			["niere",1],
			["weintrauben",1]
		] 
	],
	
	["turtle", 350, 40, 7000, 8, 9,  
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["catshark", 500, 40, 20000, 10, 10,  
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 170, 30, 3700, 1, 1,   
		[ 
			["cocainep",1],
			["turtle",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 500, 40, 11000, 1, 1,   
		[ 
			["turtle",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 350, 20, 7800, 1, 1,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["turtle",1]
		] 
	],
	
	["froschlsd", 270, 30, 8300, 1, 1,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["turtle",1],
			["heroinp",1]
		] 
	],
	
	["moonshine", 200, 30, 4600, 1, 1,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["turtle",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["niere", 2500, 500, 17500, 4, 3,   
		[ 
			["cocainep",1],
			["moonshine",1],
			["wein",1],
			["froschlsd",1],
			["heroinp",1],
			["apple",-1], 
			["turtlesoup",-1],
			["peach",-1],
			["froschbein",-1],
			["wein",-1]
		] 
	],
	
	["schmuck", 120, 5, 1600, 5, 3,   
		[ 
			["schaufel",1],
			["oilp",1],
			["iron_r",1],
			["edelmetall",1],
			["copper_r",1],
			["niere",1],
			["heroinp",1],
			["cocainep",1]
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