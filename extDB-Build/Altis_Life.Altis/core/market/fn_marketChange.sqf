/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference","_text"];

_rand = [0,200] call life_fnc_randomRound; //0-200

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 36): //6% Drogenpreis erhöhen
	{
		_text = "Ermittlern des BND gelang ein riesen Coup gegen den internationalen Drogenhandel. Mehrere Kilogramm unterschiedlichster Drogen wurden sichergestellt. Der Wert aller illegalen Substanzen wird dadurch stark zunehmen.";
		[[4,"BND hat eine internationale Drogenbande ausgehoben",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["froschlsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["moonshine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;		
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 44): //8% Ölpreis erhöhen
	{
		_text = "Im Kampf gegen den Terror hat sich die BLUFOR-Staatengemeinschaft dazu entschlossen erneut in den nahen Osten einzumarschieren. Dadurch wurden auch Öllieferungen zu unserem gloreichen Inselstaate gestoppt. Vertreter des staatlichen Tankstellenverbundes kündigten höhere Öl- und infolge dessen Spritpreise an.";
		[[4,"Neuer Krieg im Irak, das Öl wird knapp!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 54): //10% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		_text = "Unsere wundervolle Regierung hat gerade verkündet, dass viele Gebäude auf unserer schönen Insel modernisiert werden müssen. Für diese massive Offensive werden verstärkt Zement, Eisen und Glas benötigt. Die Preise dazu werden demnach in die Höhe steigen.";
		[[4,"Regierung kündigt massive Bau- und Modernisierungsoffensive an",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 60): //4% Goldpreis sinkt
	{
		_text = "Eine Meldung über eine einen Alchemisten, der eine Formel gefunden haben will Eisen in Gold zu verwandeln, lässt die Anlegerschaft am Materialwert zweifeln. Auch wenn die Meldung bisher nicht wissenschaftlich bewiesen wurde, verkaufen viele Anleger ihr Gold.";
		[[4,"Anleger verlieren Vertrauen in Gold!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;  
		
		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 68): //8% Kupfer/Silber erhöht sich
	{
		_text = "Durch die Modernisierung Afrikas und dem daraus hervorgehenden Boom der Elektronikindustrie werden immer mehr Edelmetalle benötigt. Mit der nun fast fertigen Stromvernetzung des gesamten Kontinents wollen die Verbraucher den selben technologischen Stand wie der Rest der Welt erreichen. Ganz Afrika braucht nun Computer und allerhand Elektronik, was die Preise weltweit in die Höhe steigen lässt.";
		[[4,"Elektronikindustrie benötigt Edelmetalle!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;  
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 74): //6% Goldpreis erhöht sich
	{
		_text = "Nach dem Bankencrash letzter Woche verlieren alle Anleger mehr und mehr das Vertrauen in den Dollar. Es wird nun wieder vermehrt auf materielle Dinge wie zum Beispiel Gold gesetzt.";
		[[4,"Anleger verlieren Vertrauen in Dollar!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;  
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 80): //6% Drogenpreis niedriger
	{
		_text = "Ratlos zeigt sich die Regierung unseres gloreichen Inselstaates angesichts der neuen Drogentoten. 'Wir haben es hier mit einer noch unbekannten, neuen synthetischen Droge zu tun' - so ein Sprecher der Regierung. Diese neue Droge soll sehr günstig sein und somit vermehrt von Abhängigen gekauft werden.";
		[[4,"Neue synthetische Droge überschwemmt Drogenmarkt!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["froschlsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["moonshine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 90): //10% Schildkröten höher
	{
		_text = "Chinesiche Forscher haben im Panzer von Schildkröten eine bisher unbekannte Verbindung gefunden, die der Schlüssel zur Heilung aller bekannten Krankheiten sein könnte. - Tierschützer befürchten jetzt die Ausrottung der Schildkröten, die sowieso schon unter Naturschutz stehen.";
		[[4,"China entdeckt Schildkröten als neue Medizin! Tierschützer sind besorgt!",_text],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["catshark", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;		
		
		diag_log "+Market+ Event turtlep";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";