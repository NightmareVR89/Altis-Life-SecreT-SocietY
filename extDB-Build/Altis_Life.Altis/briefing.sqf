waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverinfo","Serverinformationen"];
player createDiarySubject ["serverregeln","Serverregeln"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Einwohner Regeln"];
player createDiarySubject ["illegal","Illegale Activitäten"];
//player createDiarySubject ["gangrules","Gangregeln"];
//player createDiarySubject ["terrorrules","Rebellenregeln"];
player createDiarySubject ["rebgebiet","Rebellengebiet"];
player createDiarySubject ["dgrenze","Die Grenze"];
player createDiarySubject ["policerules","Polizeiregeln"];
player createDiarySubject ["bgeld","Bußgeldkatalog"];
player createDiarySubject ["controls","Tastenbelegung"];
//player createDiarySubject ["house","Eigenheim"];
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
				Jeder ist auf unserem Teamspeak Server Herzlich
				TS3 IP: 148.251.84.132<br/><br/>
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
			"Sei kein Idiot!", 
				"
				Wenn dir ein Admin sagt, du bist ein Idiot, dann machst du vermutlich idiotische Sachen.<br/>
				Denkt einfach, wie ihr im echten Leben handeln wuerdet und handelt dementsprechend. Das nennt man RPG (Role Play Gaming)<br/>
				Sei kein Idiot, okay?<br/><br/>
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["safezones",
		[
			"Safe Zones",
				"
				Safe Zones: <br/>
				Spawnstädte (Kavala, Agios, Athira, Pyrgos) <br/>
				Spawnzones für Autos (Autohändler, Garage) <br/>
				Alle Polizeigebiete (HQ´s, Airfield, Trainingslager, Schießplatz) <br/>
				Die Außenposten der Rebellen (Ausgeschlossen Rebellengebiet) <br/><br/>
				
				In Safezones / ATM´s in Safezones ist es verboten auszurauben, nieder zu schlagen oder zu töten (ausgenommen Rebellengebiet) <br/><br/>
				"
		]
	];
	player createDiaryRecord ["zivrules",
		[
			"Einwohner Regeln",
				"
				§1 Den Anweisung der Polizei ist unbedingt Folge zu leisten. Geschieht dies nicht, wird ein Bußgeld ausgesprochen (siehe Bußgeldkatalog) oder im wiederholten Fall mit Arrest bestraft. <br/>
				§2 Die gesamten Polizeiareale sind Sperrgebiet für Zivilisten. Das betreten ist strikt verboten und wird  bestraft.(siehe Bußgeldkatalog) <br/>
				§3 Unfälle sind der Polizei zu Melden. <br/>
				§4 Zivilisten ist es nicht erlaubt, bei Gruppenaktivitäten teil zu nehmen. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegal",
		[
			"Fahrzeuge",
				"
				Folgende Fahrzeuge sind für Zivilisten Illegal und werden mit einem Bußgeld belangt. <br/><br/>
				• Ifrit <br/>
				• Alle bewaffnete Fahrzeuge <br/>
				• Alle Polizeifahrzeuge <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["illegal",
		[
			"Waffen", 
				"
				Folgende Waffen sind für Zivilisten Illegal und werden mit einem Bußgeld belangt. <br/><br/>
				Alle Langwaffen <br/>
				Die PDW zählt auch dazu <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["illegal",
		[
			"Waren", 
				"
				Folgende Waren sind für Zivilisten Illegal und werden mit Bußgeld belangt. <br/><br/>
				Schildkröten <br/>
				Heroin <br/>
				Kokain <br/>
				Marihuana <br/>
				LSD <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["gangrules",
		[
			"Allgemein", 
				"
				§1 Jeder kann eine Gang gründen oder beitreten. <br/>
				§2 Eine Gang ist KEINE Gruppierung wie z.B. McReb und dürfen keinen ''Krieg'' führen. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["terrorrules",
		[
			"Allgemein", 
				"
				§1 	Mitglieder einer Rebellengruppe müssen einen ClanTAG tragen ! <br/>
				§2 	Wird bei Kriegen zwischen den verschiedenen Rebellengruppen jemand getötet darf er nicht wieder am Kampf teilnehmen und auch nicht zum auspähen von Information fungieren. <br/>
				§3 	Kriegshandlungen zwischen dem beiden Gruppen ohne Roleplay dürfen nur im Rebellengebiet stattfinden. ( Nur bei diesen Kriegshandlung wird kein RP benötigt) <br/>
				§4	Wer sich in eine Safezone zurückzieht kann nach einem Feuergefecht dort noch bis zu 15 Minuten lang verfolgt und erschossen werden, dies gilt für das flüchten auf die gesetzes seite des Kontinents und auch für städte. In städten ist hierbei zu beachten das der Polizei dies per SMS mitgeteilt werden muss um sie darüber zu Informieren das es evtl. in Städten zu Kampfhandlungen kommen kann. <br/>
				§5 	Keine Provokationen im Sidechat <br/>
				§6	Rückzugsregel: Wenn eine der betroffenen Gruppen keinen Sinn mehr in einem weiteren Kampf sieht, Kann der Gruppenleiter eine Nachricht an den Feindlichen Gruppenleiter schicken und einen Friedlichen abzug aller verbleibender Kämpfer absprechen, dies wird mit einem Aufgabetribut (Geldbetrag an die Siegergruppe) belegt, wir haben uns auf einen Betrag von 25.000 pro Person die am Kampf teilgenommen hat (von der Gruppe). <br/>
				§7 	Rebellen dürfen überall verhaftet werden. <br/>
				§8	Alle Rebellenangriffe müssen angekündigt werden! Siehe 'Rebellenangriffe' fuer mehr Informationen. <br/>
				§9 	Ein Rebell zu sein bedeutet nicht, dass man sich nicht an die Serverregeln halten muss. Es gibt spezielle Regeln fuer unterschiedliche Aktionen die befolgt werden müssen, um die Fairness und die Balance zu gewähren.<br/>
				§10	Jeder in Rebellenuniform wird als solcher gesehen, auch wenn er kein Gesetz gebrochen hat.<br/>
				§11	Um als Rebelle zu gelten und an Angriffen teilzunehmen musst du eine Rebellenuniform tragen und eine Rebellenlizenz besitzen.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["terrorrules",
		[
			"Rebellenangriffe", 
				"
				§1 	Rebellenangriffe muessen der Polizei spaetestens 5 Minuten vorher per SMS gemeldet werden. Die Nachricht muss die Uhrzeit, den genauen Ort und die Anzahl der Rebellen beinhalten. Diese leiten die Nachricht an die Admins weiter, welche Ihrerseits alle Einwohner per Adminmessage informieren. Falls kein Admin da ist darf auch kein Rebellenangriff durchgeführt werden!<br/>
				§2 	Rebellen dürfen keine Einwohner töten. Die Rebellen sind gegen die Regierung bzw. die Polizei.<br/>
				§3 	Für Rebellen gelten auch die 'Neue Leben-Regeln', ausgenommen die 15 Minutenregeln, siehe Regel 6.<br/>
				§4 	Ein Rebellenangriff darf höchstens 60 Minuten dauern oder endet wenn alle Polizisten/Rebellen gestorben sind.<br/>
				§5 	Wenn der Rebellenführer (der Spieler, der den Angriff der Polizei gemeldet hat) offline geht ist der Angriff vorueber. Der Rebellenfuehrer muss die Polizei/Admins informieren, wenn der Angriff vorbei ist und die Rebellen mindestens 1 Km entfernt sind.<br/>
				§6 	Rebellen die an einem Angriff teilnehmen muessen Rebellenkleidung tragen. Rebellen die verhaftet oder getötet wurden duerfen nicht wieder an dem Angriff teilnehmen und auch nicht als Einwohner in der Nähe spawnen.<br/>
				§7 	Polizisten die getötet wurden duerfen NICHT wieder an den Angriffsort zurueckkehren solange der Rebellenangriff laeuft. Sollten alle Polizisten getötet werde ist der Angriff vorbei, dies wird von den Admins bekanntgegeben.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["terrorrules",
		[
			"Gruppenanmeldung", 
				"
				Neue Gruppierungen sind erst im Forum zu registrieren und ab zu segnen lassen. <br/>
				Bei missachtung wird die gesammte Gruppe vom Server verwiesen. Und ein TS Gespräch fällt dann an. <br/><br/>
				Gruppierungen müssen im Forum eine AKTIVE Mitgliederliste führen ! <br/><br/>
				Sobald die Gruppierung im Forum genehmigt worden ist, bekommt sie im TS einen eigenen Channel mit Rechten. <br/><br/>
				Wir erwarten von den Gruppierungen aktivität im Forum. Sich auf den neusten stand zu lesen. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["rebgebiet",
		[
			"Rebellenrebiet",
				"
				§1 Im Rebellengebiet herrscht ROLEPLAY. <br/>
				§2 Es gibt keine Safezones im Rebellengebiet <br/>
				§3 Es sollte nicht eine Person mehrfach hintereinander ausgeraubt werden. <br/>
				§4 Im Rebellengebiet hat die Polizei keine ''Macht''. Das heißt, die Polizei ist nicht verpflichtet dort Streife zu fahren oder jemanden dort zu helfen. <br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["dgrenze",
		[
			"Allgemein", 
				"
				Diese Regeln betreffen das Grenzgebiet zwischen dem zivilen Westen und dem Rebellengebiet. <br/><br/>

				1. 	Du musst damit einverstanden sein dich durchsuchenzulassen solltest du die Grenze ueberqueren wollen. Wenn du dem nicht zustimmst muss du damit rechnen nicht über die Grenze gelassen zu werden. <br/>
				2. 	Falls du auf der Wantedliste stehst wird du verhaftet und durchsucht. <br/>
				3. 	Die Grenze liegt im Rebellengebiet deshalb gelten auch die Regeln des 'Rebellengebiets'. <br/>
				4. 	Die Polizei muss alle normalen Regeln befolgen und darf tödliche Gewalt nur anwenden, wenn ihr Leben in Gefahr ist oder auf sie geschossen wird.<br/>
				5. 	Die Grenzcheckpoints sind KEINE Safezones.<br/>
				6. 	Nur die Polizei darf die Grenzcheckpoint legal betreiben. Jeder Einwohner oder Rebell der dabei erwischt wird, hat mit einer Mindeststrafe von 100.000$ zu rechnen.<br/>
				7. 	Alle Rebellen und Rebellenfahrzeuge werden feindlich eingeschaetzt und haben damit zu rechnen beschossen zu werden. Rebellen duerfen die Grenzen niemals überqueren, sollten sie es versuchen gilt das als Akt der Agression und es muss mit tödlicher Gewalt gerechnet werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak",
				"
				Polizeibeamte MÜSSEN auf dem TS Server sein sobald sie ihren Dienst antreten. <br/>
				Die verteilung der Beamten sollte von selbst geschehen, sollte dies nicht klappen wird dies ein hochrangiger übernehmen. <br/><br/>
				Kein durcheinander reden ! <br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Allgemein",
				"
				§1 Korruption ist strikt verboten. Wenn Beweise gesammelt und vorgelegt wurden, wird der Kommisar vom Dienst suspendiert und auch nicht mehr in den Polizeidienst aufgenommen. <br/>
				§2 Polizeiautos müssen immer abgeschlossen werden. <br/>
				§3 Die Polizeisirene/Lichter dürfen nur im Notfall eingeschaltet werden. <br/>
				§4 Sollte es die Situation erfordern, ist ein hochrangiger Beamter authorisiert, einem Rekruten eine scharfe Waffe zu übergeben. (Bsp. Es gibt einen Überfall auf eine der Hauptstäde, nur ein hochrangiger Beamter ist online und sonst nur Rekruten. Dann ist es dem Beamter gestattet, für diesen Einsatz Rekruten mit besseren Waffen auszusatten.) Die Waffen müssen nach dem Einsatz eingesammelt werden ! <br/>
				§5 Rekruten dürfen in Kavala zu zweit Streife gehen/fahren. <br/>
				§6 Sollten nur Rekruten online sein, hat der Dienstälteste das Kommando. Es berechtigt ihm Streifen zu verteilen (Kavala, Athira, Agios, Pyrgos). <br/>
				§7 Rekruten dürfen sich nicht mehr als Zivilisten einloggen, außer es sind unter 10 Leute auf dem Server. <br/>
				§8 Polizisten dürfen KEINER Gruppierung annehmen. (Rebellen, Personschutz, Söldnergruppen,etc) <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints",
				"
				Checkpoints und Straßensperren dürfen jederzeit errichtet werden aber nur auf befestigten Straßen. Und gut sichtbar. <br/><br/>
				Ein Checkpoint muss aus mindestens 4 Polizisten und 4 Fahrzeugen bestehen. Darunter muss sich mindestens ein Kommisar befinden. <br/><br/>
				Checkpoints müssen nicht auf der Karte markiert werden. <br/><br/>
				An Checkpoints herrscht eine Geschwindigkeitsbeschränkung von 30 km/h. <br/>
				Dort ist anzuhalten ! <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Grenzbereichregeln",
				"
				Du musst dich an alle Polizeiregeln halten, auch wenn du hier stationiert bist.<br/><br/>

				1. 	Du musst jeden, der die Grenze überqueren will, fragen ob er mit einer Durchsuchung einverstanden ist. Wenn er dies ablehnt darf er die Grenze nicht überqueren, falls die Grenze trotzdem überschritten wird muss die Person festgenommen werden und entweder eine Geldstrafe zahlen oder sollte er kein Geld haben ins Gefängnis. Vergiss nicht die Person zu durchsuchen, denn sie hat das Gesetz gebrochen. Sollte die Geldstrafe bezahlt werden ist es ihnen trotzdem nur dann gestattet die Grenze zu überqueren, wenn sie einer Durchsuchung zustimmen.<br/>
				2. 	Du musst jeden verhaften und durchsuchen der auf der Wanted Liste steht.<br/>
				3. 	Wenn du an der Grenze stirbst darfst du diese nicht innerhalb von 15 Minuten wieder aufsuchen, siehe 'Neue Leben-Regeln'.<br/>
				4. 	Du darfst solange du willst an dem Grenzcheckpoint sein und musst deine Anwesenheit auch nicht auf der Karte markieren.<br/>
				5. 	Du darfst Nagelbretter und Autos nutzen, um den Grenzübergang zu sichern. <br/>
				6. 	Wenn sich jemand dem Checkpoint nährt musst du ihn laut auffordern stehen zu bleiben. Sollte die Person nicht anhalten darf mit scharfer Munition auf die Reifen des Autos geschossen werden.<br/>
				7. 	Auch wenn du im Rebellengebiet bist darfst du nicht als erstes schiessen.<br/>
				8. 	Du darfst mit scharfer Munition schiessen solltest du als erstes beschossen werden.<br/>
				9. 	Rebellenfahrzeuge sind immer feindlich einzuschaetzen, du darfst scharfe Munition benutzen um das Fahrzeug zu stoppen. Versuch aber immer die Verdächtigen zuerst mit dem Tazer zu erwischen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zentralbank",
				"
				1. 	Sperrgebiet fuer alle Einwohner. Bei unbefugtem Eintritt droht Geldstrafe, Verhaftung, Gefaengnis oder Tod durch Schusswaffengebrauch.<br/>
				2. 	Ist ein Helikoptersperrgebiet.<br/>
				2. 	Bei einem Bankraub werden saemtliche Regierungsmitglieger aufgerufen, den Raub zu stoppen.<br/>
				3. 	Die Polizei darf nicht blind auf die Bank schiessen.<br/>
				4. 	Die Polizei sollte als erstes saemtliche Einwohner aus dem Gebiet evakuieren.<br/>
				5. 	Jeder Einwohner, der sich der Polizei in den Weg stellt, gilt als Komplize und kann verhaftet werden.<br/>
				6.	Die Polizei oder Einsatzleitung sollte immer mindestens 2 Leute als Wache bei der Zentralbank zur Verfuegung stellen.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["policerules",
		[
			"Luftunterstützung",
				"
				Helikopter dürfen nur nach Absprache bzw. Erlaubnis des im Dienst höchstrangigen Polizisten eingesetzt werden.Ist kein Vorgesetzter vor Ort darf von den Rekruten selbstständig 1 Heli (Humingbird) eingesetzt werden.
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Beschlagnahmung",
				"
				Fahrzeuge, die verlassen an Straßenrändern stehen und keinem Fahrer zu zu ordnen sind, dürfen beschlagnahmt werden. <br/><br/>
				Polizisten dürfen nicht ihre eigenen Fahrzeuge beschlagnahmen. <br/><br/>
				In einem Feuergefecht ist es nicht gestattet Fahrzeuge zu beschlagnahmen, da diese als Deckung genutzt werden können. Erst wenn das Feuergefecht beendet ist, dürfen rumstehende Fahrzeuge beschlagnahmt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Streife",
				"
				Patrouillen dürfen zu Fuß oder in Fahrzeugen durchgeführt werden. <br/><br/>
				Die Geschwindigkeitsbegrenzung für Polizisten bei Patrouillen in Städten beträgt 50 km/h, außer bei Verfolgungsjagden. <br/><br/>
				Patrouillen im Rebellengebiet sind nicht gestattet. (Siehe Raiding/Camping) <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Raiding",
				"
				Ein Raid muss aus mindestens 4 Polizisten( mind 1 Teamleiter!) bestehen, muss aber beim höchstrangigen Polizisten angemeldet und genehmigt werden. <br/><br/>
				Wenn sich am Raidpunkt keine Personen befinden, dann muss der Raidpunkt innerhalb von 15 Minuten verlassen werden. <br/><br/>
				Alle Zivilisten in der Gegend müssen festgehalten und durchsucht werden. <br/><br/>
				Wenn nichts Illegales gefunden wurde, müssen die Personen wieder freigelassen werden. <br/>br/>
				Wenn etwas Illegales gefunden wurde, müssen die Personen mit Strafen belegt oder ins Gefängnis gesteckt werden. <br/><br/>
				Tödliche Waffen dürfen nur dann verwendet werden, wenn die Situation es erforderlich macht. <br/><br/>
				Wenn ein Raid fertig ist ( Erfolgreichen), muss die Gegend von der Polizei geräumt werden. <br/><br/>
				Nach einem Raid darf derselbe Punkt für 60 Minuten nicht mehr geraidet werden. <br/><br/>
				Backup kann jederzeit angefordert werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Camping",
				"
				Illegale Gebiete dürfen nach einem Raid nicht länger becampt werden. (siehe Raiding) <br/><br/>
				Checkpoints werden nicht als Camping angesehen. <br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["policerules",
		[
			"Arrest/Tickets",
				"
				Ein Ticket (Bußgeld) muss in voller Höhe bezahlt werden. Dies wird automatisch von euren Konten abgezogen. Solltet ihr nicht über ausreichende Geldmittel verfügen wird euch alles bis auf 2000$ genommen. <br/><br/>
				Personen müssen informiert werden, warum sie kontrolliert werden und warum sie ein Ticket ausgestellt bekommen. <br/><br/>
				Wenn man auf einer Verfolgung ist und an ein Rebellencamp kommt, muss Backup angefordert werden (4 Personen Regel) (Siehe Raiding) <br/> <br/>
				Zu hoch ausgestellte Tickets (siehe Bußgeldkatalog) sind ein Grund für eine Verwarnung <br/><br/>
				Nach 3 Verwarnungen ist man vom Dienst supendiert und kann erst nach einer gewissen Zeit einen Antrag auf Wiederaufnahme in die Polizei stellen. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Tödliche Waffen",
				"
				In Städten darf generell nur mit Tazern geschossen werden, außer das eigene Leben ist unmittelbar bedroht. In diesem Fall darf auf tödliche Waffengewalt zurück gegriffen werden.Bevor der Taser benutzt wird muss die Zielperson angesprochen werden. <br/><br/>
				In Städten müssen tödliche Waffen (MX, Sniper, etc.) geschultert getragen werden. Desweiteren dürfen Waffen nur dann im Anschlag getragen werden, wenn es die Situation erfordert. (Doppelt Strg drücken um die Waffen aus dem Anschlag runter zu nehmen.) <br/><br/>
				"
		]
	];
	player createDiaryRecord ["bgeld",
		[
			"Allgemein",
				"
				§1	Foltern										40.000$ <br/>
				§2	Falschaussage								20.000$ <br/>
				§3	Bestechungsversuch							30.000$ <br/>
				§4	Korruption									Entlassung <br/>
				§5	Sachbeschädigung							15.000$ <br/>
				§6	Polizisten trollen							20.000$ <br/>
				§7	Beleidigung Zivi, Polizei					15.000$ <br/>
				§8	Flucht aus Polizeikontrolle					10.000$ <br/>
				§9	Geiselnahme									70.000$ + 30min Haft <br/>
				§10	Bankraub									60.000$ + 20min Haft <br/>
				§11	Autodiebstahl								30.000$ <br/>
				§12	Diebstahl (Rucksack reinschauen/beklauen)	10.000$ <br/>
				§13	Raubüberfall								40.000$ + 10min Haft <br/>
				§14	Körperverletzung							25.000$ <br/>
				§15	Mord										100.000$ + 40min Haft <br/>
				§16	Führen illegaler Waffen						25.000$ <br/>
				§17	Waffenbesitz ohne Lizenz					35.000$ <br/>
				§18	Drogenbesitz								40.000$ <br/>
				§19	Drogenhandel								60.000$ <br/>
				§20	Handel geschützer Tierarten					50.000$ <br/>
				§21	Erpressung									50.000$ + 25min Haft <br/>
				§22	Freiheitsberaubung (Fesseln)				50.000$ + 15min Haft <br/>
				§23	Checkpoint zerstören						30.000$ <br/>
				§24	Polizisten drohen							15.000$ + 5min Haft <br/><br/>
				Versuchte Straftaten kosten die Hälfte ! <br/>
				Es muss nicht immer das volle Bußgeld ausgestellt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["bgeld",
		[
			"Zu Fuß",
				"
				§1	Hausfriedensbruch							10.000$ <br/>
				§2	Verkehr behindern							20.000$ <br/>
				§3	Laufen auf der Straßen						5.000$ <br/>
				§4	Fahrzeuge behindern							10.000$ <br/>
				§5	Absichtlich vor Autos werfen / rennen		20.000$ <br/><br/>
				Versuchte Straftaten kosten die Hälfte ! <br/>
				Es muss nicht immer das volle Bußgeld ausgestellt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["bgeld",
		[
			"Fahrzeuge",
				"
				§1	Überhöhte Geschwindigkeit bis 20 km/h		10.000$ <br/>
				§2	Überhöhte Geschwindigkeit über 20 km/h		20.000$ <br/>
				§3	Fahren auf falsche Straßenseite				5.000$ <br/>
				§4	Verursachen eines Unfalls					20.000$ <br/>
				§5	Fahren ohne Licht							5.000$ <br/>
				§6	Fahren mit kaputtem Auto (reifen)			10.000$ <br/>
				§7	Person in Auto sperren						10.000$ <br/>
				§8	Fahren ohne Führerschein					15.000$ <br/>
				§9	Fahrerflucht								20.000$ <br/>
				§10	Führen illegaler Fahrzeuge					30.000$ <br/>
				§11	Trollen mit Fahrzeugen (Hupen etc.)			15.000$ <br/><br/>
				Versuchte Straftaten kosten die Hälfte ! <br/>
				Es muss nicht immer das volle Bußgeld ausgestellt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["bgeld",
		[
			"Luftfahrzeuge",
				"
				§1	Tiefer als 150m in Städte fliegen			30.000$ <br/>
				§2	Landen in Städte (ohne genehmigung)			50.000$ <br/>
				§3	Führen von illegalen Flugobjekten			70.000$ <br/>
				§4	Fliegen ohne Kollisionslichter				50.000$ <br/>
				§5	Fliegen ohne Fluglizenz						35.000$ <br/><br/>
				Versuchte Straftaten kosten die Hälfte ! <br/>
				Es muss nicht immer das volle Bußgeld ausgestellt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["controls",
		[
			"",
"<br/>
== Spieler Tasten ====================================<br/>
<br/>
[ <font color='#A9E2F3'>Z</font> ] - Player Menü öffnen<br/>
[ <font color='#A9E2F3'>U</font> ] - Fahrzeuge auf/zu schliessen<br/>
[ <font color='#A9E2F3'>T</font> ] - Fahrzeug Inventar öffen<br/>
[ <font color='#A9E2F3'>TAB-TASTE</font> ] - Spitzhacke/Ölpumpe/Netz benutzen<br/>
<br/>
[ <font color='#A9E2F3'>Links Shift + F</font> ] - Surrender (aufgeben)<br/>
[ <font color='#A9E2F3'>Links Shift + H</font> ] - Handwaffe holstern<br/>
[ <font color='#A9E2F3'>Links Shift + G</font> ] - Spieler K.O. schlagen<br/>
zum ausrauben / beim entführen ect. Mausrad scrollen für Menü<br/>
[ <font color='#A9E2F3'>Windows-Taste</font> ] - Action-Menü <br/>
zum aufnehmen von Items o. Geld | Fahrzeug reparieren | fesseln / entfesseln<br/>
<br/>
<br/>
== Police / Medic / ADAC Tasten ====================================<br/>
<br/>
[ <font color='#A9E2F3'>Windows-Taste</font> ] - Action-Menü <br/>
[ <font color='#A9E2F3'>O</font> ] - Schranke AUF/ZU<br/>
[ <font color='#A9E2F3'>F</font> ] - Cop / Medic Sirene ON/OFF<br/>
[ <font color='#A9E2F3'>Links Shift + L</font> ] - Blaulicht ON/OFF <br/>
[ <font color='#A9E2F3'>Links Shift + R</font> ] - Handschellen anlegen<br/>
[ <font color='#A9E2F3'>Links Shift + H</font> ] - Handwaffe holstern<br/>
[ <font color='#A9E2F3'>Mausrad scrollen</font> ] - Cop-Marke zeigen<br/>
<br/>
<br/>
== Geschwindigkeitsmessung / Blitzer ==================<br/>
<br/>
[ <font color='#A9E2F3'>Taser auf Fahrzeug zoomen + L</font> ]

"
		]
	];
	player createDiaryRecord ["house",
		[
			"Allgemein",
				"
					Du kannst hier ein Haus kaufen, wenn du dir vorher eine Eigentumsurkunde beim Lizenzhändler besorgt hast. <br/>
					Suche nach einem Schild mit dem Haussysmbol und öffne im Scroll-Menü die Haussteuerung. <br/><br/><br/>			
					
					Ein eigenes Haus bringt dir folgende Vorteile:<br/><br/>
					
					* Du kannst in deinem Haus respawnen.<br/>
					* Du kannst beliebige virtuelle Items (vom Z-Inventar) in deinem Haus speichern. Es fasst standardmäßig 100 Gewichtsplätze. <br/>
					* Wenn du mehr Inventarplatz für dein Haus willst, dann kaufe Möbel im Möbelhaus und benutze sie in der Nähe deines Hauses. <br/>
					* Niemand weiß wo du wohnst, außer er beobachtet dich oder du erzählst es ihm. <br/>
					* Direkter Zugriff auf die Autogarage über das Hausmenü. <br/><br/><br/>
					Aber Vorsicht! Die Polizei kann das Haus durchsuchen! <br/>
				"
		]
	];