waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverinfo","Serverinformationen"];
player createDiarySubject ["serverregeln","Serverregeln"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

	player createDiaryRecord["serverinfo",
		[
			"Teamspeak",
				"
				Jeder ist auf unserem Teamspeak Server Herzlich willkommen
				TS3 IP: 148.251.84.132
				"
		]
	];
	
	player createDiaryRecord["serverinfo",
		[
			"Homepage",
				"
				Wir besitzen zur Zeit noch keine DE Domain (ist in Arbeit)
				Jedoch besitzen wir eine Homepage wo JEDER Willkommen ist.
				Homepage: http://arma3-altis-life.enjin.com/home
				"
		]
	];
	
	player createDiaryRecord["serverinfo",
		[
			"Spenden",
				"
				Alle Spenden werden ausschlieslich für die instandhaltung und verwaltung für den Rootserver genutzt.
				Im Forum könnt Ihr nachlesen, wer, wieviel und wohin das Geld geht.
				Spenden kann man auf unserer Homepage.
				Im Forum sind Alternativ Möglichkeiten aufgelistet.
				"
		]
	];

		player createDiaryRecord ["serverregeln",
		[
			"Banngründe", 
				"
				Das ist eure einzige Warnung. <br/><br/>
				Hier sind einige Gründe aufgelistet weshalb wir bannen. <br/><br/>
				• Hacking <br/>
				• Cheating <br/>
				• Exploiting <br/>
				• RDM (Random Death Matching) <br/>
				• Bugusing <br/>
				• Andere Fahrzeuge rammen um eine Explosion zu erzeugen. <br/>
				• Sounds und Musik in der Direct oder Side Communication abspielen führt nach einmaliger Verwarnung zum Ban. <br/><br/>
				Solltet ihr gebannt werden, habt ihr die Möglichkeit im TS ein Gespräch anzufragen. Je nach härte des Vorfalls wird auch entbannt. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverregeln",
		[
			"Exploits",
				"
				Aus dem Gefängnis fliehen außer man zahlt seine Kaution (bail money), man sitzt die Strafe ab oder wird von einem Heli aus dem Gefängnis befreit. <br/><br/>
				Sich selber umbringen oder das Spiel verlassen um einer Gefängnisstrafe oder dem Role Play zu entgehen (Kidnapping, etc.) <br/><br/>
				Items und/oder Geld verdoppelt durch ausnutzen der Spielmechanik oder Hacks. Wenn einem eine hohe Menge Geld überwiesen wird ( 1000000+), muss dies sofort einem Polizisten gemeldet werden und übergeben werden. Tut ihr das nicht, riskiert ihr, dass ihr anstatt des Versenders gebannt werdet. <br/><br/>
				Gehackte Items benutzen, auch wenn ihr diese von euch nicht gehackt wurden. <br/><br/>
				Bugs und Spielmechaniken zum eigenen (fiesen) Vorteil ausnutzen (jegliche Arten) <br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverregeln",
		[
			"Alle Fahrzeugarten", 
				"
				§1 	Wer andere Zivilisten absichtlich überfährt wird bestraft. Im Falle eines Unfalls wird dies von der Polizei untersucht und im Unschuldsfall wird keine Strafe verhängt. ( Desync muss sofort der Polizei mitgeteilt werden ) <br/>
				§2 	Es besteht rechtsfahr Gebot. <br/>
				§3 	Absichtliches positionieren vor Autos um überfahren oder verletzt zu werden wird mit einem Bußgeld belegt. <br/>
				§4 	Sich in fremde Fahrzeuge zu setzen um andere Spieler zu provozieren wird mit einem Bußgeld belegt. <br/>
				§5 	Fahrzeuge stehlen mit der Absicht sie zu zerstören. ( Kann zum Landesverweis führen) <br/>
				§6 	Die Geschwindigkeiten betragen in Städten auf Hauptstrassen max. 50 Km/h.In unmittelbarer Marktnähe (100m Umkreis) max 30 Km/h <br/>
				§7 	Auf Nebenstrassen in Städten sind max. 30 Km/h erlaubt. <br/>
				§8 	Ausserhalb geschlossener Ortschaften 120kmh. Bei Unfällen jeglicher Art werdet ihr in vollem Maße zur Rechenschaft gezogen. <br/>
				§9 	Um Fahrzeuge im Game zu führen braucht ihr einen Führerschein. Das Fahren ohne den speziellen Führerschein wird mit Bußgeld bestraft. <br/>
				§10 Dauerhaftes unnötiges Hupen im Spiel das als störend empfunden wird ist zu unterlassen. <br/>
				§11 Falsche Anschuldigungen im Spiel zu machen wird mit Bußgeld bestraft. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"Luftfahrzeuge", 
				"
				§1 Andere Luftfahrzeuge absichtlich rammen wird mit Haftstrafe geahndet ( kann zur Landesverweis führen) <br/>
				§2 Das Fliegen von Hubschraubern ist nur mit einer Fluglizenz erlaubt. Ohne eine Fluglizenz zu fliegen gibt eine Geldbuße. <br/>
				§3 Das landen in jeden Städten ist nur Zivillandeplätzen gestattet. <br/>
				§4 Luftfahrzeug Regel 3 gelten nicht, wenn man eine besondere Landeerlaubnis erwirkt hat. <br/>
				§5 Das schweben über einer Stadt unter 150m ist verboten und wird mit Geldbuße bestraft. Tiefes schweben über der Stadt um einen anderen Spieler auf zu nehmen zählt als Landeversuch. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"Wasserfahrzeuge", 
				"
				§1 Boote ohne Erlaubnis durch die Gegend schieben ist ein Verstoß und wird geahndet. <br/>
				§2 Schwimmende Leute überfahren ist verboten und wird bestraft. Es wird wie VDM (Vehicle Death Match) angesehen. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"Interaktion mit der Polizei", 
				"
				§1 In Rucksäcke von Polizisten zu schauen hat die sofortige Festnahme zur Folge. Geschieht dies öfter vom gleichen Spieler, wird dieser wegen „trolling“ bestraft. <br/>
				§2 Das dauerhafte durchgeben und verfolgen von Polizisten um andere Spieler zu warnen wird mir Arrest belegt. <br/>
				§3 In Städten Waffen aufnehmen und Polizisten erschießen ohne jeglichen Role Play Grund hat einen temporären Ban zur Folge. (Sektion RDMing) <br/>
				§4 Absichtliches Blocken von Polizisten, um sie an der Ausübung ihrer Pflicht zu hindern, wird mit Arrest bestraft. <br/>
				§5 Der Diebstahl von Polizeiuniformen um sich als Polizei aus zu geben ist verboten und führt unweigerlich zum Kick bzw. Ban <br/>
				§6 Falschaussagen gegenüber der Polizei werden mit Bußgeld bestraft. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"Waffennutzung", 
				"
				§1 In Safezones ist die Waffe zu schultern ! (Shift + H) <br/>
				§2 In Safezones darf nicht geschossen werden. <br/>
				§3 In Städten mit einer gezogenen Waffe herumlaufen ist eine Straftat und wird mit einem Ticket geahndet. Bei Wiederholung droht Gefängnis. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"RDM Random Death Meatch", 
				"
				§1 Spieler töten ohne jeden Role Play Grund ist verboten. Es muss eine eindeutige Kommunikation statt finden. Ist dies nicht der Fall ist es RDM und führt zum Kick/Ban. <br/>
				§2 Spieler ohne Grund aus einem Hinterhalt zu erschiessen führt ebenfalls zum Ban. <br/>
				§3 Wenn man nicht Teil eines Krieges ist, verlasst das Gebiet. Solltet ihr trotz dieser Info bei einem Feuergefecht getötet werden habt ihr keine Anspruch auf Schadenersatz. <br/>
				§4 Selbstjustiz wird bestraft!! <br/>
				§5 Andere Spieler töten weil sie einem keine Geldbeträge gegeben haben wird mit Gefängnis bestraft. <br/><br/>
				§6 Wird man in einer Role Play Aktion getötet, darf man als: <br/>
				• Polizist den Tatort für 15 Minuten nicht betreten <br/>
				• Zivilist den Tatort für 15 Minuten nicht betreten <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverregeln",
		[
			"Kommunikation", 
				"
				Folgendes kann je nach Ansicht des Admins zu einem Kick bzw. bis zum permanenten Ausschluss aus dem Spiel fuehren.<br/><br/>
				
				§1 	Abspielen von Musik in einem Channel.<br/>
				§2 	Rassistische Aeusserungen im Chat oder Voice<br/>
				§3 	Extreme Beleidigung anderer Mitspieler, Admins oder Regierungsmitglieder<br/>
				§4 	Uebertrieben vulgaere Sprache<br/>
				§5 	Spam in Chat Channels.<br/>
				§6 	Teamspeakteilnahme nur um Gegner auszulauschen oder Positionsdaten und andere Infos zu kriegen.<br/>
				§7 	Teamspeak ist freiwillig! Erleichtert aber enorm die Organisation und Verstaendigung innerhalb einzelner Gruppierungen.<br/>
				§8 	Im Teamspeak gibt es nicht umsonst verschiedene Raeume. Bei Teilnahme bitte dementsprechend aufhalten. Polizisten bei Polizei, Mafiosi wo anders :)<br/>
				§9 	Besonders als Polizist sollte man davon ausgehen, dass sich nicht jeder im Teamspeak befindet. Direct Ingame Voice/Chat wird immer von allen im Umkreis 50m gehoert!<br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverregeln",
		[
			"Neues Leben - Regeln", 
				"
				Gueltig fuer Einwohner und Regierung.<br/><br/>
				
				Folgendes kann je nach Ansicht des Admins zu einem Kick bzw. bis zum permanenten Ausschluss aus dem Spiel fuehren.<br/><br/>

				1. 	Wenn du stirbst musst du mind. 15 Minuten warten bevor du an den Ort, wo du gestorben bist, zurueckkehrst.<br/>
				2. 	Wer als Verbrecher stirbt verliert alle seine Straftaten. Du darfst aber auch keine Rache suchen.<br/>
				3. 	Wenn du durch einen Amoklauf (RDM) gestorben bist ist das kein neues Leben!)<br/>
				4. 	Wer selbst respawnt, verliert seine Straftaten nicht.<br/>
				5. 	Wer sich absichtlich umbringt, verliert seine Straftaten nicht.<br/>
				6. 	Mit Serverneustart beginnt ein neues Leben<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverregeln",
		[
			"DSei kein Idiot!", 
				"
				Wenn dir ein Admin sagt, du bist ein Idiot, dann machst du vermutlich idiotische Sachen.<br/>
				Denkt einfach, wie ihr im echten Leben handeln wuerdet und handelt dementsprechend. Das nennt man RPG (Role Play Gaming)<br/>
				Sei kein Idiot, okay?<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
				2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
				2. If the Federal Reserve is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				1. No helicopter can land within city limits without authorization from the highest ranking officer online. (Exceptions being what is listed below.)<br/>
				Kavala: The hospital helipad (037129) or docks (031128).<br/>
				Athira: The sports field (138185) or behind the DMV (140188).<br/>
				Pyrgos: The fields North/East of DMV (170127)<br/>
				Sofia: Opposite the car shop (258214) or the fields Southeast of the garage (257212)<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at  but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				1. Gang areas are not considered illegal. Thus a cop may enter without a raid, but may not restrain or stop anyone inside without probable cause/illegal activity. (Talking to the gang NPC is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/><br/>


				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. If they allow a search, you may restrain them and search them.<br/>
				7. If they do not submit to a search, you must let them go, unless there is probable cause.<br/>
				8. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				9. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles", 
				"
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speeding", 
				"
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>
				
				Inside major cities:<br/>
				Small roads: 50km/h<br/>
				Main roads: 65km/h<br/>
				Outside major cities:<br/>
				Small roads: 80km/h<br/>
				Main roads: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/>
				3. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/><br/>
				
				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Weapons", 
				"
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				"
		]
	];