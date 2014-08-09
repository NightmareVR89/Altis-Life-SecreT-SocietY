waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["spacer1","------------------------"];
player createDiarySubject ["serverrules","Gesetzbuch"];
player createDiarySubject ["safezones","Safezones"];
player createDiarySubject ["spacer2","------------------------"];
player createDiarySubject ["civrules","Zivilisten"];
player createDiarySubject ["policerules","Polizei"];
player createDiarySubject ["medicrules","Sanitäter"];
player createDiarySubject ["adacrules","ADAC"];
player createDiarySubject ["spacer3","------------------------"];
player createDiarySubject ["pricelist","Preise Fahrzeuge"];
player createDiarySubject ["licenses","Preise Lizenzen"];
player createDiarySubject ["traderinfo","Handels System"];
player createDiarySubject ["ganginfo","Gang System"];
player createDiarySubject ["spacer4","------------------------"];
player createDiarySubject ["catalog","Bußgeld-Katalog"];
player createDiarySubject ["spacer5","------------------------"];
player createDiarySubject ["controls","Tasten-Kombis"];
player createDiarySubject ["spacer6","------------------------"];
player createDiarySubject ["change","Change Log"];


//######### CHANGE LOG #######################################

player createDiaryRecord ["change",
		[
			"", 
"
<br/>
<font color='#A9E2F3'>CHANGE LOG</font><br/><br/>
- FIXES: map fixes <br/>
<br/>
- FIXES: marktpreise überarbeitet<br/>
<br/>
"
		]
	];


//---------------------------------------------------//

player createDiaryRecord ["ganginfo",
		[
			"", 
"
<br/>
<font color='#A9E2F3'>GANG BEREICHE</font><br/><br/>
Die auf der Map markierten Bereiche kannst du, wenn du in einer Gang bist, einnehmen.
Dazu gründest du unter (z) eine Gang. 
An den Punkten findest du eine <font color='#A9E2F3'>Schwarze Fahne</font> an der ihr den Gang-Bereich für euch einnehmen und halten könnt.
Ist ein Bereich in euer Hand so kann er euch aber auch von einer anderen Gang oder der Polizei streitig gemacht werden.
Um ihn zurück zu erobern muss ein Gang-Mitglied ebenfalls an diese Fahne treten und auf [Gebiet erobern] drücken.
Das ist aber nur möglich wenn sich kein anderes Besitzer-Gang-Mitglied im Umkreis von 300m um die Fahne befindet. 
<font color='#A9E2F3'>WICHTIG:</font> Um einen Bereich zu erobern darf ohne Vorwarnung <font color='#FF0000'>scharf geschossen</font> werden! 
Es werden keine Items oder Waffen etc. ersetzt oder anderweitig erstattet. Überlegt euch also vorher ob ihr diese Bereiche betretet.
In den Gangbereichen, 3 an der Zahl, könnt ihr je nach Gebiet eine illegale Droge ohne Lizenz verarbeiten.
"
		]
	];

//---------------------------------------------------//

player createDiaryRecord ["safezones",
		[
			"", 
"
<br/>
In dem <font color='#FF0000'>Rebellengebiet</font> braucht ihr euch nicht wundern wenn auf euch geschossen wird! 
Es wird dort natürlich auch ein gewisses RP vorrausgesetzt!
<br/>
<br/>
<font color='#A9E2F3'>ES GIBT SAFEZONES IN FOLGENEN BEREICHEN :</font><br/><br/>
- Kavala 250m um den Marktplatz<br/>
- Athira 200m um den Bankautomat<br/>
- Sofia 150m um den Bankautomat<br/>
- Pyrgos 150m um den Bankautomat<br/>
<br/>
<font color='#A9E2F3'>WICHTIG:</font> In den Gang-Bereichen wird meistens ohne Vorwarnung <font color='#FF0000'>scharf geschossen</font>! 
Es werden keine Items oder Waffen ect. ersetzt oder anderweitig erstattet. Überlegt euch also vorher ob ihr diese Bereiche betretet.

<br/><br/>Für Fragen - TEAMSPEAK-IP: 148.251.84.132
"
		]
	];


//---------------------------------------------------//


player createDiaryRecord ["pricelist",
		[
			"", 
"
<br/>
<font color='#A9E2F3'>FAHRZEUGE: (Mietpreise) (Permanent 50% mehr)</font><br/><br/>
- <font color='#A9E2F3'>Quadbike</font> $350 <font color='#A9E2F3'>INVENTAR:</font> 25<br/>
- <font color='#A9E2F3'>Go-Kart</font> $5500<font color='#A9E2F3'>INVENTAR:</font> 10 <font color='#A9E2F3'>(nur VIP)</font><br/>
- <font color='#A9E2F3'>Hatchback</font> $24000<font color='#A9E2F3'>INVENTAR:</font> 40<br/>
- <font color='#A9E2F3'>Hatchback (Sport)</font> $8000 <font color='#A9E2F3'>INVENTAR:</font> 45<br/>
- <font color='#A9E2F3'>Offroad</font> $4600 <font color='#A9E2F3'>INVENTAR:</font> 65<br/>
- <font color='#A9E2F3'>SUV</font> $3800 <font color='#A9E2F3'>INVENTAR:</font> 50<br/>
- <font color='#A9E2F3'>Truck Boxer</font> $8000 <font color='#A9E2F3'>INVENTAR:</font> 100<br/>
<br/>
- <font color='#A9E2F3'>Zamak Transport</font> $75000 <font color='#A9E2F3'>INVENTAR:</font> 200<br/>
- <font color='#A9E2F3'>Zamak Transport (Covered)</font> $125000 <font color='#A9E2F3'>INVENTAR:</font> 300<br/>
- <font color='#A9E2F3'>Tempest Transport (Covered)</font> $300000 <font color='#A9E2F3'>INVENTAR:</font> 580<br/>
- <font color='#A9E2F3'>HEMTT Transport (Covered)</font> $450000 <font color='#A9E2F3'>INVENTAR:</font> 600<br/>
- <font color='#A9E2F3'>HEMTT Box</font> $250000 <font color='#A9E2F3'>INVENTAR:</font> 850 <br/>
<br/>
- <font color='#A9E2F3'>MH-9 Hummingbird</font> $60000 <font color='#A9E2F3'>INVENTAR:</font> 90<br/>
- <font color='#A9E2F3'>PO-30 Orca</font> $600000 <font color='#A9E2F3'>INVENTAR:</font> 100<br/>
- <font color='#A9E2F3'>UH-80 Ghost Hawk</font> $1200000 <font color='#A9E2F3'>INVENTAR:</font> 300 <br/>
- <font color='#A9E2F3'>CH-49 Mohawk</font> $1200000 <font color='#A9E2F3'>INVENTAR:</font> 350 <br/>
<br/>
- <font color='#A9E2F3'>Ifrit</font> $2500000 <font color='#A9E2F3'>INVENTAR:</font> 60<br/>
- <font color='#A9E2F3'>Offroad (MG)</font> $2500000 <font color='#A9E2F3'>INVENTAR:</font> 65<br/>
<br/>

"
		]
	];

//---------------------------------------------------//

player createDiaryRecord ["licenses",
		[
			"", 
"
<br/>
<font color='#A9E2F3'>PREISE FÜR LIZENZEN:</font><br/><br/>
- <font color='#A9E2F3'>Führerschein</font> $350 <br/>
- <font color='#A9E2F3'>Pilotenschein</font> $10000 <br/>
- <font color='#A9E2F3'>ADAC Mitgliedschaft</font> $5000 <br/>
- <font color='#A9E2F3'>Heroin Lizenz</font> $15000 <br/>
- <font color='#A9E2F3'>Gang Lizenz</font> $70000 <br/>
- <font color='#A9E2F3'>Öl Lizenz</font> $5000 <br/>
- <font color='#A9E2F3'>Tauchschein</font> $2000 <br/>
- <font color='#A9E2F3'>Bootsführerschein</font> $1000 <br/>
- <font color='#A9E2F3'>Waffen Lizenz</font> $4000 <br/>
- <font color='#A9E2F3'>Rebellen Lizenz</font> $45000 <br/>
- <font color='#A9E2F3'>LKW Führerschein</font> $6000 <br/>
- <font color='#A9E2F3'>Diamanten Lizenz</font> $19000 <br/>
- <font color='#A9E2F3'>Kupfer Lizenz</font> $6000 <br/>
- <font color='#A9E2F3'>Eisen Lizenz</font> $9500 <br/>
- <font color='#A9E2F3'>Sand Lizenz</font> $4000 <br/>
- <font color='#A9E2F3'>Salz Lizenz</font> $7000 <br/>
- <font color='#A9E2F3'>Kokain Lizenz</font> $19000 <br/>
- <font color='#A9E2F3'>Marijuana Lizenz</font> $9000 <br/>
- <font color='#A9E2F3'>Zement Lizenz</font> $6500 <br/>
- <font color='#A9E2F3'>Hausbesitzer Lizenz</font> $100000 <br/>
- <font color='#A9E2F3'>Wein Lizenz</font> $1500 <br/>

- <font color='#A9E2F3'>Moonshine Lizenz</font> $5000 <br/>
- <font color='#A9E2F3'>Tabak Lizenz</font> $2000 <br/>
- <font color='#A9E2F3'>LSD Lizenz</font> $10000 <br/>
- <font color='#A9E2F3'>Froschbein Lizenz</font> $8750 <br/>
- <font color='#A9E2F3'>Wertstoff Lizenz</font> $7000 <br/>
- <font color='#A9E2F3'>Kunststoff Lizenz</font> $9000 <br/>
- <font color='#A9E2F3'>Edelmetall Lizenz</font> $15000 <br/>
- <font color='#A9E2F3'>Grabschänder Lizenz</font> $11000 <br/>
"
		]
	];	
	
//---------------------------------------------------//

player createDiaryRecord ["traderinfo",
		[
			"", 
"
<br/>
 FARM / TRADER SYSTEM: (Verkaufspreise Markt abhängig)<br/>
<br/>
<br/>
  <font color='#A9E2F3'>Lebensmittel</font><br/>
<br/>
- Äpfel<font color='#A9E2F3'> --> Markt</font><br/>
- Pfirsiche<font color='#A9E2F3'> --> Markt</font><br/>
- Weintrauben<font color='#A9E2F3'> --> Markt</font><br/>

- Salema <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Ornate <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Mackerel <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Tuna <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Mullet <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Cat Shark <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
<br/>
  <font color='#A9E2F3'>Rohstoffe </font><br/>
<br/>
- Kupferkabel <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Kupfer Barren <font color='#A9E2F3'> --> Kupferhändler</font><br/>
- Roheisen <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Eisen Barren <font color='#A9E2F3'> --> Eisenhändler</font><br/>
- Sand <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Glas <font color='#A9E2F3'> --> Glashändler</font>  <br/>
- Roh-Öl <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Raffiniertes Öl <font color='#A9E2F3'> --> Ölhändler</font>  <br/>
- Steine <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Zement <font color='#A9E2F3'> --> </font> Zementhändler <br/>
- Salz <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Veredeltes Salz <font color='#A9E2F3'> --> Salzhändler</font>  <br/>
- Diamanten <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Geschl. Diamanten <font color='#A9E2F3'> --> Diamantenhändler</font>  <br/>
- Tabak <font color='#A9E2F3'> -> </font> Zigarren <font color='#A9E2F3'> --> Tabakhändler</font>  <br/>
- Weintrauben <font color='#A9E2F3'> -> </font> Wein <font color='#888888'>(Weinverarbeiter) </font><font color='#A9E2F3'> --> Wongs Spezialitäten</font>  <br/>
- Müll <font color='#A9E2F3'> -> </font> Wertstoffe<font color='#888888'>(Müllverarbeiter) </font><font color='#A9E2F3'> --> Wertstoffhändler</font>  <br/>
- Wertstoff <font color='#A9E2F3'> -> </font> Kunststoff <font color='#888888'>(Kunststoffverarbeiter) </font><font color='#A9E2F3'> --> Kunststoffhändler</font>  <br/>
- Wertstoff <font color='#A9E2F3'> -> </font> Edelmetall <font color='#888888'>(Edelmetallverarbeiter) </font><font color='#A9E2F3'> --> Edelmetallhändler</font>  <br/>
<br/>
  <font color='#A9E2F3'>Illegale Rohstoffe</font><br/>
<br/>
- Frösche<font color='#A9E2F3'> -> </font> LSD <font color='#888888'>(Pierres Küche) </font><font color='#A9E2F3'> --> Drogendealer</font>  <br/>
- Cannabis<font color='#A9E2F3'> -> </font> Marihuana <font color='#888888'>(Marihuanaverarbeiter) </font><font color='#A9E2F3'> --> Drogendealer</font>  <br/>
- Unreines Heroin<font color='#A9E2F3'> -> </font> Heroin <font color='#888888'>(Heroinverarbeiter) </font><font color='#A9E2F3'> --> Drogendealer</font>  <br/>
- Koka<font color='#A9E2F3'> -> </font> Kokain <font color='#888888'>(Kokainverarbeiter) </font><font color='#A9E2F3'> --> Drogendealer</font>  <br/>
- Schildkröten <font color='#888888'>(nur mit Waffe SDAR) </font><font color='#A9E2F3'> --> Schildkrötendealer</font><br/>
- Grabschänder<font color='#A9E2F3'> -> </font> Schmuck <font color='#888888'>(Grabschmuckverarbeiter) </font><font color='#A9E2F3'> --> Edelmetallhändler</font>  <br/>
- Goldbarren<font color='#A9E2F3'> -> </font> Goldbarren <font color='#888888'>(Staatsbank) </font><font color='#A9E2F3'> --> Goldbarrenankauf</font>  <br/>
- Niere <font color='#888888'>(nur mit Skalpell) </font><font color='#A9E2F3'> --> Organhändler</font><br/>
- Weintrauben <font color='#888888'>(Moonshinebrauerei) </font><font color='#A9E2F3'> -> </font> Moonshine <font color='#A9E2F3'> --> Wongs Spezialitäten </font><br/>
<br/><br/>

"
		]
	];	
	
	
//---------------------------------------------------//

player createDiaryRecord ["serverrules",
		[
			"Wichtige Info", 
"
<br/>
<font color='#A9E2F3'>SPEICHERN VON FAHRZEUGEN:</font><br/><br/>
Fahrzeuge despawnen wenn sie 30min. nicht benutzt werden und keine Player im Umkreis von 300m vorhanden sind.<br/>
Fahrzeuge die nicht permanent gekauft wurden, können nicht in Garagen gespeichert werden.<br/>
Fahrzeuge die nicht in Garagen vor Server-Restart gebracht werden, sind danach nicht gespeichert und gehen verloren.<br/>

<br/>
<font color='#A9E2F3'>SPEICHERN VOM INVENTAR:</font><br/><br/>
Dein Inventar speichert sich automatisch alle 10min.<br/>
Du kannst aber zu deiner eigenen Sicherheit vor dem ausloggen auf den Button: SPEICHERN im Z-Menü drücken.<br/>

<br/><br/>Für Fragen - TEAMSPEAK-IP: 148.251.84.132
"
		]
	];


//---------------------------------------------------//

	
player createDiaryRecord ["serverrules",
		[
			"SecretSocietY Gesetzbuch", 
"
<br/>
== Allgemein =======================================
<br/><br/>
<font color='#A9E2F3'>§1 Trollen, Hacks, Bugs, Exploits, RDM, VDM, SDM etc.</font><br/>
- Wird mit sofortigem und dauerhaften Bann bestraft<br/>
<br/>
<font color='#A9E2F3'>§2 Bugs, Desyncs etc.</font><br/>
- Morde, Fahrlässige Tötungen etc. wegen Desyncs und Bugs sind eine Straftat und keine Entschuldigung und werden nach dem Bußgeldkatalog behandelt<br/>
<br/>
<font color='#A9E2F3'>§3 Random Deathmatch (RDM, VDM, SDM)</font><br/>
- Das wahllose Töten von Spielern ohne RP-Hintergrund ist verboten.<br/>
- Solltest du als Zivilist in eine Schießerei geraten und sterben gilt dies nicht als RDM.<br/>
- Das Verteidigen von Freunden und / oder Gangmitgliedern ist erlaubt.<br/>
<br/>
<font color='#A9E2F3'>§4 Donatorregeln</font><br/>
- Die Weitergabe von Gegenständen die im Donatorshop erworben wurden ist verboten.<br/>
- Das Aufheben von Donatorwaffen ist nicht verboten, die Gegenstände werden dann aber als illegal gehandhabt.<br/>
<br/>
<font color='#A9E2F3'>§5 One-Life-Regeln</font><br/>
-  Jeder darf genau einmal an einem Event teilnehmen. Nach seinem Tod darf der Teilnehmer nicht an den Ort des Geschehens zurückkehren bis das Event beendet ist.<br/>
- Ein Event beginnt mit Eröffnung des RP und endet mit dem Ausgang dessen.<br/>
- Suizid ist kein Tod.<br/>
- Das wiederbeleben von Toten fällt nicht unter die One-Life-Regel<br/>
- Sanitäter sind neutral und dürfen definitiv nicht an- bzw erschossen, entführt und ausgeraubt werden.<br/>
<br/>
<font color='#A9E2F3'>§6 Support</font><br/>
- Support gibt es NUR im TS. Je nach Gebiet sind entweder die Admins oder der Polizeichef dafür zuständig<br/>
- Rückerstattungen müssen im Forum niedergeschrieben werden mit möglichst genauen Angaben<br/>

<br/>
== Zivilisten ======================================
<br/><br/>

<font color='#A9E2F3'>§1 Absichtliche Zerstörung von Fahrzeugen</font><br/>
- Das vorsätzliche Zerstören von Fahrzeugen ohne Roleplayhintergrund ist verboten.<br/>
- Das absichtliche Rammen von Fahrzeugen um sie zu zerstören ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§2 Kommunikation</font><br/>
- Der Side-Chat ist für normale, kurzweilige Kommunikation gedacht. Für alles weitere gibt es den Gruppen- oder Direct-Chat.<br/>
- Spammen ist verboten.<br/>
- Das Posten von Links (Fremdwerbung etc.) ist verboten.<br/>
- Beleidigungen, Rassismus, Antisemitismus und pornografische Sprache ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§3 Illegale Gegenstände</font><br/>
Fahrzeuge: -Ifrit -bewaffneter Rebellenoffroad - Strider -Jegliche Einsatzfahrzeuge<br/>
Waffen: Alle Waffen die keine Faustwaffen sind plus PDW sowie jegliche Polizeiwaffen<br/>
Gegenstände: -Schildkrötenfleisch -Marihuana -Kokain -Heroin -Moonshine - Schmuck - Goldbarren - Nieren<br/>
(auch unverarbeitet)<br/>
<br/>
<font color='#A9E2F3'>§4 Einmischung in Polizeiaktionen</font><br/>
- In Rucksäcke von Polizisten gucken ist verboten.<br/>
- Das dauerhafte spionieren und / oder stalken von Polizisten ist verboten.<br/>
- Das dauerhafte Blocken von Polizisten um diese daran zu hindern ihre Pflicht zu tun ist verboten.<br/>
<br/>
<font color='#A9E2F3'>§5 Verhalten bei polizeilichen Maßnahmen</font><br/>
- Den Anweisungen der Polizei ist Folge zu leisten.<br/>
- Wer eine Waffe bei sich führt sollte dies dem Polizisten mitteilen, bevor er aus dem Fahrzeug steigt.<br/>
- Widerstand gegen polizeiliche Maßnahmen wird im schlimmsten Fall mit dem Gebrauch der Schusswaffe beantwortet.<br/>
<br/>
<font color='#A9E2F3'>§6 Verkehrsregeln</font><br/>
- Es gilt rechts vor Links.<br/>
- Es gilt Rechtsfahrgebot.<br/>
- Bei Nacht ist mit Licht zu fahren.<br/>
- Das Parken auf der Straße ist verboten.<br/>
- Jeder Fahrzeugführer hat Werkzeugkästen und Erste-Hilfe-Kästen mitzuführen.<br/>
- Das absichtliche Behindern von Fahrzeugen ist verboten.<br/>
- Das Überfliegen von Städten unterhalb von 150m ist verboten.<br/>
- Das Landen von Helikoptern in Städten und auf Straßen ist verboten. Ausnahmeregelungen können durch die Polizei erteilt werden.<br/>
<br/>
<font color='#A9E2F3'>§7 Zusatz</font><br/>
- Die Gesetze von Altis sind verpflichtend.<br/>
- Bei Verstoß gegen die Gesetze wird nach Bußgeldkatalog bestraft. Im Wiederholungsfall droht eine Gefängnisstrafe.<br/>
- Sanitäter sind neutral und dürfen definitiv nicht an- bzw erschossen, entführt und ausgeraubt werden.<br/>

<br/>
== Rebellen ========================================
<br/><br/>

<font color='#A9E2F3'>§1 Raub, Diebstahl etc. (Event)</font><br/>
- Raub, Diebstahl etc. muss einen RP Hintergrund haben und sollte nicht zwangsweise mit dem Tot enden<br/>
<br/>
<font color='#A9E2F3'>§2 Rebellenverhalten</font><br/>
- Rebellen richten sich gegen den Staat und nicht gegen Zivilisten.<br/>
- Sanitäter sind neutral und dürfen definitiv nicht an- bzw erschossen, entführt und ausgeraubt werden.<br/>

<br/>
== Polizisten ======================================
<br/><br/>


<font color='#A9E2F3'>§1 Allgemeines Verhalten</font><br/>
- Polizisten haben sich dauerhaft im TS aufzuhalten.<br/>
- Jeder Polizist hat sich an die geltenden Gesetze in Altis zu halten.<br/>
- Die Polizei ist Freund und Helfer und sollte sich auch entsprechend verhalten.<br/>
<br/>
<font color='#A9E2F3'>§2 Patrouillen</font><br/>
- Jeder Polizist sollte im ihm zugeteilten Gebiet patrouilleren.<br/>
- Patrouillen dürfen in Fahrzeugen mit maximal 50 km/h durchgeführt werden.<br/>
- Bei Patrouillen dürfen Bürger ohne jeglichen Grund kontrolliert und durchsucht werden.<br/>
- Auf Patrouillengängen ist die Waffe stets gesenkt zu halten.<br/>
<br/>
<font color='#A9E2F3'>§3 Fahrzeugkontrollen und Checkpoints</font><br/>
- Die Polizei darf sowohl feste als auch mobile Straßensperren errichten um Fahrzeugkontrollen durchzuführen.<br/>
- Bei einer Fahrzeugkontrolle ist für die Absicherung der Polizeikräfte zu sorgen.<br/>
- Ein Checkpoint muss aus mindestens drei Polizisten und zwei Fahrzeugen bestehen.<br/>
- Solange ein Checkpoint besetzt ist dürfen Polizisten sich an diesem wiederbeleben lassen.<br/>
<br/>
<font color='#A9E2F3'>§4 Einsatz von Waffen</font><br/>
- Jeder Polizist ist angehalten auf nicht-tödliche Waffen zurückzugreifen.<br/>
- Die Polizei sollte versuchen, jeden Verdächtigen festzunehmen, nicht zu töten.<br/>
- Der Einsatz von tödlicher Munition ist Rekruten nur mit Anweisung eines ranghöheren Polizisten erlaubt.<br/>
- Waffen sind generell gesenkt zu tragen.<br/>
- Polizisten dürfen sich mit tödlicher Munition zur Wehr setzen falls sie oder Zivilisten angegriffen werden.<br/>

<br/>
<font color='#A9E2F3'>§5 Verhalten bei Banküberfällen</font><br/>
- Sind mindestens fünf Polizisten im Dienst muss eingeschritten werden.<br/>
- Jeder Polizist begibt sich umgehend zum Bankraub.<br/>
- Jede Möglichkeit die Bankräuber zu verhaften sollte genutzt werden.<br/>
- Der Einsatz tödlicher Munition ist in §4 geregelt.<br/>
<br/>
<font color='#A9E2F3'>§6 Razzien, Raids und Camping</font><br/>
- Razzien müssen NICHT angekündigt werden.<br/>
- Bei einer Razzia / einem Raid müssen mindestens vier Beamte anwesend sein.<br/>
- Bei einer Razzia / einem Raid darf jede Person zunächst kontrolliert und festgehalten werden.<br/>
- Nach einer Razzia / einem Raid darf das entsprechende Gebiet für mindestens 45 Minuten nicht erneut betreten werden.<br/>
- Polizisten dürfen sich zur Observierung für maximal 15 Minuten im entsprechende Gebiet aufhalten.<br/>
- Das becampen von illegalen Gebieten ist untersagt.<br/>
- Sind keine 5 Polizisten online darf auch ein Raid mit weniger Polizisten durchgeführt werden<br/>
- Die Observierung durch Drohnen ist kein Campen.<br/>
<br/>
<font color='#A9E2F3'>§7 Beschlagnahmung</font><br/>
- Fahrzeuge dürfen nach mehr als 5 Minuten stillstand abgeschleppt werden.<br/>
- Fahrzeuge welche Ordnungsgemäß auf Parkplätzen abgestellt und unbeschädigt sind dürfen nicht abgeschleppt werden.<br/>
- Fahrzeuge welche für schwere Straftaten eingesetzt werden dürfen von der Polizei dauerhaft beschlagnahmt und zerstört werden.<br/>
- Illegale Fahrzeuge dürfen sofort zerstört werden.<br/>
<br/>
<font color='#A9E2F3'>§8 Festnahmen und Bußgelder</font><br/>
- Jeder Polizist ist angehalten, Bußgelder statt Gefängnisstrafen zu verhängen.<br/>
- Der Bußgeldkatalog ist hierbei bindend.<br/>
- Wiederholungstäter sind zu inhaftieren.<br/>
- Jeder Bürger hat das Recht zu erfahren, wieso er festgenommen wird.<br/>
- Festgenommene Personen sind schnellstmöglich zu bearbeiten und dürfen nicht länger als 5 Minuten ohne RP Hintergrund stehen gelassen werden.<br/>
<br/>
<font color='#A9E2F3'>§9 Verträge</font><br/>
1. Hochrangige Beamte dürfen Informanten, Spionagegruppierungen oder andere Leute kontaktieren und einstellen und für die Hilfe bei polizeilichen Einsätzen/Operationen oder für das Dienen als Wachmann bezahlen. <br/>
2. Verträge bleiben aufrecht, bis der zuständige Beamte den Vertrag beendet. <br/>
3. Verträge bestehen nach dem Tod des Anbieters oder des Ausführenden weiter, außer der Vertrag wurde davor annulliert. <br/>
<br/>
<font color='#A9E2F3'>§10 Zusätze</font><br/>
1. Die Polizeigesetze sind bindend.<br/>
2. Bei wiederholtem Verstoß gegen die Polizeigesetze wird der Polizist unehrenhaft aus dem Dienst entlassen.<br/>


"
		]
	];

//---------------------------------------------------//
	
player createDiaryRecord ["civrules",
		[
			"Benehmt euch!", 
				"
<br/>
1. Beleidigungen sind verboten.<br/>
2. Ein Rollenspiel kaputt zu machen ist verboten.<br/>
3. Trollen, egal wie, ist verboten.<br/>
4. Jemanden OHNE Rollenspielgrund zu töten ist untersagt.<br/>
5. Jemanden wegen z.b. 10€ umzubringen wird als RDM angesehen. Fordert nicht sinnlose oder unmögliche Sachen!<br/><br/>

Wenn ein Admin euch sagen muss, dass ihr euch nicht anständig benehmt, dann ist euer Verhalten nicht annehmbar.<br/><br/>		
				
				"
		]
	];

//---------------------------------------------------//


player createDiaryRecord ["adacrules",
		[
			"Regeln wenn du ADAC spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Melde dich im Teamspeak (IP: 148.251.84.132)<br/>
			im ADAC-Channel.
			<br/><br/>
			1. Du solltest mindestens 16 Jahre sein.<br/>
			2. Keine Beschlagnahmungen ohne Grund<br/>
			<br/>
			Beim verhängen von Servicegebühren muss nach der <br/>
			Preisliste des ADAC vorgegangen werden!<br/>
			<br/>
			Es dürfen keine Beschlagnahmungen vorgenommen werden <br/>
			um eigene Fahrzeuge in die eigene Garage zu porten!<br/>
			<br/>
			Wenn der ADAC in einem momentanen Kampfgebiet mit der Polizei Fz  <br/>
			reparieren soll, muss auf eine Freigabe der Polizei gewartet werden!<br/>
"
		]
	];	
	
	
//---------------------------------------------------//
	

	player createDiaryRecord ["medicrules",
		[
			"Regeln wenn du SANITÄTER spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Melde dich im Teamspeak (IP: 148.251.84.132)<br/>
			im SANITÄTER-Channel.
			<br/><br/>
			1. Du solltest mindestens 16 Jahre sein.<br/>
			2. Keine Wiederbelebungen der selben Person innerhalb von 10min.<br/>
			<br/>
			Beim wiederbeleben von Personen erhälst du automatisch eine Gebühr von $200.<br/>
			Das ist dein Einkommen und darf nicht ohne Wunsch danach durchgeführt werden!<br/>
			<br/>
			Wenn der Sanitäter in einem momentanen Kampfgebiet mit der Polizei Personen  <br/>
			wiederbeleben soll, muss auf eine Freigabe der Polizei gewartet werden!<br/>

"
		]
	];	
	
//---------------------------------------------------//

	player createDiaryRecord ["policerules",
		[
			"Regeln wenn du POLIZIST spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Es besteht Teamspeakpflicht! IP: 148.251.84.132<br/>
			Wer nicht spricht wird als Cop entfernt.
			<br/><br/>
			1. Du musst mindestens 18 Jahre sein.<br/>
			2. Kein Tazern ohne Grund<br/>
			3. Keine Festnahmen ohne Grund<br/>
			4. Keine Beschlagnahmungen ohne Grund<br/>
			<br/>
			Beim verhängen von Strafen muss nach dem <br/>
			Gesetzbuch und Bußgeldkatalog vorgegangen werden!<br/>
			<br/>
			Es dürfen keine Beschlagnahmungen vorgenommen werden <br/>
			um eigene Fahrzeuge in die eigene Garage zu porten!<br/>
"
		]
	];

	
//---------------------------------------------------//
	
	player createDiaryRecord ["catalog",
		[
			"Bußgeldkatalog",
"
<br/>
== Störung der öffentlichen Ordnung ================
<br/><br/>

<font color='#A9E2F3'>versuchter Diebstahl:</font><br/>
1.000 $<br/>
<font color='#A9E2F3'>Diebstahl:</font><br/>
3.000 $ <br/>
<font color='#A9E2F3'>Fahrzeugbeschädigung:</font><br/>
10.000 $<br/>
<font color='#A9E2F3'>In Rucksäcke schauen:</font><br/>
min. 500 $<br/>
<font color='#A9E2F3'>Freiheitsberaubung (Geiselnahme):</font><br/>
5 Minuten Gefängnis <br/>
<font color='#A9E2F3'>Raubüberfall:</font><br/>
10 Minuten Gefängnis<br/>
<font color='#A9E2F3'>Mord:</font><br/>
15 Minuten Gefängnis<br/>
<font color='#A9E2F3'>Serienmörder:</font><br/>
15-30 Minuten Gefägnis<br/>
<font color='#A9E2F3'>Banküberfall:</font><br/>
20 Minuten Gefängnis <br/>
<font color='#A9E2F3'>Missachten eines Checkpoints:</font><br/>
5.000 $<br/>
<font color='#A9E2F3'>Diebstahl aus Rucksack:</font><br/>
1.000 $<br/>
<font color='#A9E2F3'>Drogenschmuggel/-handel:</font><br/>
Wahrenwert + 30.000 $<br/>
<font color='#A9E2F3'>Schmuggel mit verbotenen Tieren:</font><br/>
Wahrenwert + 30.000 $<br/>
<font color='#A9E2F3'>Trolling:</font><br/>
30-60 Minuten Gefängnis<br/>

<br/>
== Umgang mit Polizisten ===========================
<br/><br/>


<font color='#A9E2F3'>Behinderung der Polizei: </font><br/>
[einmaliger Verstoß] 500 $<br/>
<font color='#A9E2F3'>Behinderung der Polizei: </font><br/>
[mehrfach] 500 $ - 15.000 $<br/>
<font color='#A9E2F3'>Beleidigung gegenüber der Polizei:</font><br/>
[einmaliger Verstoß] 1.500 $<br/>
<font color='#A9E2F3'>Beleidigung gegenüber der Polizei:</font><br/>
[mehrfach] 1.500 $ - 25.000 $<br/>
<font color='#A9E2F3'>Befreien festgesetzter Personen:</font><br/>
[einmaliger Verstoß] 3.000 $<br/>
<font color='#A9E2F3'>Befreien festgesetzter Personen:</font><br/>
[mehrfach] 3.000 $ - 10.000 $<br/>
<font color='#A9E2F3'>Inspizierung von Einstatzfahrzeugen:</font><br/>
5.000$<br/>
<font color='#A9E2F3'>Beamtenbeschuss:</font><br/>
50.000 $ - 100.000 $<br/>
<font color='#A9E2F3'>Verletzen eines Beamten:</font><br/>
25.000 $ - 50.000 $<br/>
<font color='#A9E2F3'>Töten eines Beamten:</font><br/>
20 Minuten Gefägnis<br/>
 
<br/>
== Umgang mit Waffen [legal] =======================
<br/><br/>


<font color='#A9E2F3'>Waffe sichtbar tragen [gezogen] Innerorts:</font><br/>
1.500 $<br/>
<font color='#A9E2F3'>Waffe abfeuern Innerorts:</font><br/>
10.000 $<br/>
<font color='#A9E2F3'>Verursachter Personenschaden mit einer Waffe:</font><br/>
8 Minuten Gefängnis <br/>
<font color='#A9E2F3'>Führen einer legalen Waffe ohne Lizenz:</font><br/>
5.000 $ + (5 Minuten Gefängnis)<br/>

<br/>
== Umgang mit Waffen [illegal] =====================
<br/><br/>
 
<font color='#A9E2F3'>Besitz außerhalb der Rebellenzone / Outpost:</font><br/>
15.000 $ + Waffe entfernen<br/>
<font color='#A9E2F3'>Personenschaden / Tötung mit illegaler Waffe:</font><br/>
20 Minuten Gefängnis<br/>
 
<br/>
== Flugverkehr =====================================
<br/><br/>
 
<font color='#A9E2F3'>Schweben über bewohntem Gebiet:</font><br/>
1.500 $<br/>
<font color='#A9E2F3'>Landen auf Straßen:</font><br/>
2.000 $<br/>
<font color='#A9E2F3'>Landen in gesperrten gebieten:</font><br/>
[z.B.: Polizeistationen, Bank] 10.000 $ <br/>
<font color='#A9E2F3'>Fliegen ohne Beleuchtung:</font><br/>
[Kollisionsleuchten] 3.000 $<br/>
<font color='#A9E2F3'>Fliegen ohne Lizenz:</font><br/>
15.000 $<br/>
 
<br/>
== Straßenverkehr ==================================
<br/><br/>

<font color='#A9E2F3'>Überschreitung Innerorts über 50km/h:</font><br/>
1.000 $<br/>
<font color='#A9E2F3'>Überschreitung Innerorts über 60km/h:</font><br/>
2.000 $<br/>
<font color='#A9E2F3'>Überschreitung Innerorts über 85km/h:</font><br/>
3.000 $ + Lizenzentzug<br/>
<font color='#A9E2F3'>Überschreitung Innerorts über 110km/h:</font><br/>
5.000 $ + Lizenzentzug<br/>

<font color='#A9E2F3'>Nicht mitführen von Werkzeug,-Verbandskasten:</font><br/>
500 $<br/>
<font color='#A9E2F3'>Lärmbelästigung durch unnötiges Hupen:</font><br/>
500 $<br/>
<font color='#A9E2F3'>Fahren ohne Fahrerlaubnis:</font><br/>
5.000 $<br/>
<font color='#A9E2F3'>Fahren ohne Licht [Nachts]:</font><br/>
1.500 $<br/>
<font color='#A9E2F3'>Fahren auf der falschen Straßenseite:</font><br/>
1.000 $ <br/>
<font color='#A9E2F3'>Fahrerflucht nach Unfall: Unfallverursacher / Behinderung des Verkehrs:</font><br/>
15.000 $ <br/>
<font color='#A9E2F3'>Vorsätzliches Überfahren von Spielern:</font><br/>
15 Minuten Gefägnis<br/>
<font color='#A9E2F3'>Falschparken / Behinderung des Fahrzeugspawns:</font><br/>
3.000 $<br/>
<font color='#A9E2F3'>Verursachen eines Personenschadens [einmalig]:</font><br/>
5.000 $<br/>
<font color='#A9E2F3'>Verursachen eines Personenschadens [mehrfach]:</font><br/>
10 Minuten Gefägnis<br/>
"
		]
	];
	
	
	
//############# Controls Section ##################################



	player createDiaryRecord ["controls",
		[
			"",
"<br/>
== Spieler Tasten ====================================<br/>
<br/>
[ <font color='#A9E2F3'>Z</font> ] - Player Menü öffnen<br/>
[ <font color='#A9E2F3'>U</font> ] - Fahrzeuge auf/zu schliessen<br/>
[ <font color='#A9E2F3'>T</font> ] - Fahrzeug Inventar öffnen<br/>
<br/>
[ <font color='#A9E2F3'>Links Shift + F</font> ] - Surrender (aufgeben)<br/>
[ <font color='#A9E2F3'>Links Shift + H</font> ] - Handwaffe holstern<br/>
[ <font color='#A9E2F3'>STRG + H</font> ] - Handwaffe entholstern<br/>
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
[ <font color='#A9E2F3'>STRG + H</font> ] - Handwaffe entholstern<br/>
<br/>
<br/>
== Geschwindigkeitsmessung / Blitzer ==================<br/>
<br/>
[ <font color='#A9E2F3'>Taser auf Fahrzeug zoomen + L</font> ]

"
		]
	];