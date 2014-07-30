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
- ADD: pyrgos markthändler+carspawn<br/>
<br/>
- FIXES: diverse performance fixes <br/>
"
		]
	];


//---------------------------------------------------//

player createDiaryRecord ["ganginfo",
		[
			"", 
"
<br/>
<font color='#A9E2F3'>GANG BREICHE</font><br/><br/>
Die auf der Map makierten Breiche kannst du wenn du in einer Gang bist eingenommen werden.
Dazu gründest du unter (z) eine Gang. 
An den Punkten findest du eine <font color='#A9E2F3'>Schwarze Fahne</font> an der ihr den Gang-Bereich für euch einnehmen und halten könnt.
<br/><br/>
Ist ein Bereich in euer Hand so kann er euch aber auch von einer anderen Gang oder der Polizei streitig gemacht werden.
Um ihn zurück zu erobern muss ein Gang-Mitglied ebenfalls an diese Fahne tretten und auf [Gebiet erobern] drücken.
Das ist aber nur möglich wenn sich kein anderes Besitzer-Gang-Mitglied im Umkreis von 300m um die Fahne befindet. 
<br/><br/>
<font color='#A9E2F3'>WICHTIG:</font> um einen Bereich zu erobern darf ohne Vorwarnung <font color='#FF0000'>scharf geschossen</font> werden!
<font color='#A9E2F3'>WICHTIG:</font> Medics dürfen nicht <font color='#FF0000'>beschossen</font> werden!
<font color='#A9E2F3'>WICHTIG:</font> Medics sind unparteiisch <font color='#FF0000'>und dürfen</font> von allesn seiten angefordert werden!
Es werden keine Items oder Waffen ect. ersetzt oder anderweitig erstattet. Überlegt euch also vorher ob ihr diese Bereiche betretet oder meidet den Bereich.
"
		]
	];

	
//---------------------------------------------------//

player createDiaryRecord ["safezones",
		[
			"", 
"
<br/>
In den <font color='#FF0000'>ROTEN BEREICHEN</font> braucht ihr euch nicht wundern wenn auf euch geschossen wird! 
Es wird dort natürlich auch ein gewisses RP vorrausgesetzt!
<br/>
<br/>
<font color='#A9E2F3'>ES GIBT SAFEZONES IN FOLGENEN BEREICHEN :</font><br/><br/>
- Kavala 250m um den Marktplatz<br/>
- Athira 200m um den Marktplatz<br/>
- Sofia 150m um den Marktplatz<br/>
- Secret City 150m um den Marktplatz<br/>
- Pyrgos 150m um den Marktplatz<br/>
<br/>
<font color='#A9E2F3'>In diesen Bereichen sind alle Waffen deaktiviert.</font><br/><br/>
<font color='#A9E2F3'>WICHTIG:</font> In den Gang-Bereichen wird meistens ohne Vorwarnung <font color='#FF0000'>scharf geschossen</font>! 
Es werden keine Items oder Waffen ect. ersetzt oder anderweitig erstattet. Überlegt euch also vorher ob ihr diese Bereiche betretet oder meidet den Bereich.

<br/><br/>Für Fragen - TEAMSPEAK-IP: 46.20.46.239 : 10137
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
- <font color='#A9E2F3'>Quadbike</font> $525 <font color='#A9E2F3'>INVENTAR:</font> 25<br/>
- <font color='#A9E2F3'>Go-Kart</font> $5500 <font color='#A9E2F3'>INVENTAR:</font> 10 <font color='#A9E2F3'>(nur VIP)</font><br/>
- <font color='#A9E2F3'>Hatchback</font> $2250 <font color='#A9E2F3'>INVENTAR:</font> 40<br/>
- <font color='#A9E2F3'>Hatchback (Sport)</font> $18000 <font color='#A9E2F3'>INVENTAR:</font> 45<br/>
- <font color='#A9E2F3'>Offroad</font> $6900 <font color='#A9E2F3'>INVENTAR:</font> 65<br/>
- <font color='#A9E2F3'>SUV</font> $5700 <font color='#A9E2F3'>INVENTAR:</font> 50<br/>
- <font color='#A9E2F3'>Truck Boxer</font> $12000 <font color='#A9E2F3'>INVENTAR:</font> 100<br/>
- <font color='#A9E2F3'>Fuel Truck</font> $2100 <font color='#A9E2F3'>INVENTAR:</font> 150 <font color='#A9E2F3'>(nur VIP)</font><br/>
<br/>
- <font color='#A9E2F3'>Zamak Transport</font> $36750 <font color='#A9E2F3'>INVENTAR:</font> 200<br/>
- <font color='#A9E2F3'>Zamak Transport (Covered)</font> $54000 <font color='#A9E2F3'>INVENTAR:</font> 250<br/>
- <font color='#A9E2F3'>Tempest Transport (Covered)</font> $70000 <font color='#A9E2F3'>INVENTAR:</font> 300<br/>
- <font color='#A9E2F3'>Tempest-Gerät Transport (Covered)</font> $126000 <font color='#A9E2F3'>INVENTAR:</font> 300<br/>
- <font color='#A9E2F3'>HEMTT Transport</font> $93000 <font color='#A9E2F3'>INVENTAR:</font> 325<br/>
- <font color='#A9E2F3'>HEMTT Transport (Covered)</font> $270000 <font color='#A9E2F3'>INVENTAR:</font> 450<br/>
<br/>
- <font color='#A9E2F3'>MH-9 Hummingbird</font> $90000 <font color='#A9E2F3'>INVENTAR:</font> 90<br/>
- <font color='#A9E2F3'>PO-30 Orca</font> $300000 <font color='#A9E2F3'>INVENTAR:</font> 210<br/>
- <font color='#A9E2F3'>CH-49 Mohawk</font> $600000 <font color='#A9E2F3'>INVENTAR:</font> 375 <font color='#A9E2F3'>(nur VIP)</font><br/>
<br/>
- <font color='#A9E2F3'>Ifrit</font> $35000 <font color='#A9E2F3'>INVENTAR:</font> 60<br/>
- <font color='#A9E2F3'>Offroad (MG)</font> $65000 <font color='#A9E2F3'>INVENTAR:</font> 65<br/>
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
- <font color='#A9E2F3'>Heroin Lizenz</font> $15000 <br/>
- <font color='#A9E2F3'>Gang Lizenz</font> $50000 <br/>
- <font color='#A9E2F3'>Öl Lizenz</font> $5000 <br/>
- <font color='#A9E2F3'>Tauchschein</font> $2000 <br/>
- <font color='#A9E2F3'>Bootsführerschein</font> $1000 <br/>
- <font color='#A9E2F3'>Waffen Lizenz</font> $4000 <br/>
- <font color='#A9E2F3'>Rebelen Lizenz</font> $15000 <br/>
- <font color='#A9E2F3'>LKW Führerschein</font> $6000 <br/>
- <font color='#A9E2F3'>Diamanten Lizenz</font> $19000 <br/>
- <font color='#A9E2F3'>Kupfer Lizenz</font> $6000 <br/>
- <font color='#A9E2F3'>Eisen Lizenz</font> $7500 <br/>
- <font color='#A9E2F3'>Sand Lizenz</font> $4000 <br/>
- <font color='#A9E2F3'>Salz Lizenz</font> $7000 <br/>
- <font color='#A9E2F3'>Kokain Lizenz</font> $25000 <br/>
- <font color='#A9E2F3'>Marijuana Lizenz</font> $9000 <br/>
- <font color='#A9E2F3'>Zement Lizenz</font> $6500 <br/>
- <font color='#A9E2F3'>Hausbesitzer Lizenz</font> $30000 <br/>
- <font color='#A9E2F3'>Brauerei Lizenz</font> $5000 <br/>
- <font color='#A9E2F3'>LSD Lizenz</font> $20000 <br/>
- <font color='#A9E2F3'>Moonshine Lizenz</font> $5000 <br/>
- <font color='#A9E2F3'>Weintraube Lizenz</font> $1500 <br/>
- <font color='#A9E2F3'>Tabak Lizenz</font> $3000 <br/>
- <font color='#A9E2F3'>Wertstoffe Lizenz</font> $7000 <br/>
- <font color='#A9E2F3'>Kunstoff Lizenz</font> $20000 <br/>
- <font color='#A9E2F3'>Edelmetall Lizenz</font> $30000 <br/>
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
- Äpfel<font color='#A9E2F3'> --> Obsthändler</font><br/>
- Pfirsiche<font color='#A9E2F3'> --> Obsthändler</font><br/>

- Salema <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Ornate <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Mackerel <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Tuna <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Mullet <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
- Cat Shark <font color='#888888'>(Tauchen o. Boot) </font><font color='#A9E2F3'> --> Fischmarkt</font><br/>
<br/>
  <font color='#A9E2F3'>Rohstoffe </font><br/>
<br/>
- Kupfer Ore <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Kupfer Barren <font color='#A9E2F3'> --> Kupferhändler</font><br/>
- Eisen Ore <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Eisen Barren <font color='#A9E2F3'> --> Eisenhändler</font><br/>
- Silber Ore <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Silber Barren <font color='#A9E2F3'> --> Schmuckhändler</font><br/>
- Sand <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Glass <font color='#A9E2F3'> --> Glasshändler</font>  <br/>
- Roh-Öl <font color='#888888'>(Ölpumpe) </font><font color='#A9E2F3'> -> </font> Raffiniertes Öl <font color='#A9E2F3'> --> Ölhändler</font>  <br/>
- Steine <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Zement <font color='#A9E2F3'> --> </font> Zementhändler <br/>
- Salz <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Veredeltes Salz <font color='#A9E2F3'> --> Salzhändler</font>  <br/>
- Diamanten <font color='#888888'>(Spitzhacke) </font><font color='#A9E2F3'> -> </font> Geschl. Diamanten <font color='#A9E2F3'> --> Händler</font>  <br/>
<br/>
  <font color='#A9E2F3'>Illegale Rohstoffe</font><br/>
<br/>
- Frösche <font color='#888888'>(von Froschteich) </font><font color='#A9E2F3'> -> </font> LSD <font color='#A9E2F3'> --> Drogendealer </font><br/>
- Schlafmohn <font color='#A9E2F3'> -> </font> Heroin <font color='#A9E2F3'> --> Drogendealer </font><br/>
- Kokainblätter <font color='#A9E2F3'> -> </font> Kokain <font color='#A9E2F3'> --> Drogendealer </font><br/>
- Cannabis <font color='#A9E2F3'> -> </font> Marijuana <font color='#A9E2F3'> --> Drogendealer </font><br/>
- Heroin <font color='#A9E2F3'> -> </font> verarb. Heroin <font color='#A9E2F3'> --> Drogendealer </font><br/>
- Schildkröten <font color='#888888'>(nur mit Waffe SDAR) </font><font color='#A9E2F3'> --> Schildkrötenhändler</font><br/>
- Maische <font color='#888888'>(von Brauerei) </font><font color='#A9E2F3'> -> </font> Moonshine <font color='#A9E2F3'> --> Moonshinehändler </font><br/>
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
Fahrzeuge despawnen wenn sie 60min. nicht benutzt werden und keine Player im Umkreis von 300m vorhanden sind.<br/>
Fahrzeuge die nicht permanent gekauft wurden, können nicht in Garagen gespeichert werden.<br/>
Fahrzeuge die nicht in Garagen vor Server-Restart gebracht werden, sind danach nicht gespeichert und gehen verloren.<br/>

<br/>
<font color='#A9E2F3'>SPEICHERN VOM INVENTAR:</font><br/><br/>
Dein Inventar speichert sich automatisch alle 10min.<br/>
Du kannst aber zur deiner eigenen Sicherheit vor dem ausloggen auf den Button: SPEICHERN im Z-Menü drücken.<br/>

<br/><br/>Für Fragen - TEAMSPEAK-IP: 148.251.84.132
"
		]
	];


//---------------------------------------------------//

	
player createDiaryRecord ["serverrules",
		[
			"Gesetzbuch", 
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
- Die Weitergabe von im Donatorshop erworbenen Gegenständen ist verboten.<br/>
- Das Aufheben von Donatorwaffen ist nicht verboten, die Gegenstände werden dann aber als illegal gehandhabt.<br/>
<br/>
<font color='#A9E2F3'>§5 One-Life-Regeln</font><br/>
-  Jeder darf genau einmal an einem Event teilnehmen. Nach seinem Tod darf der Teilnehmer nicht an den Ort des Geschehens zurückkehren bis das Event beendet ist.<br/>
- Ein Event beginnt mit Eröffnung des RP und endet mit dem Ausgang dessen.<br/>
- Suizid ist kein Tod.<br/>
- Das wiederbeleben von Toten fällt nicht unter die One-Life-Regel<br/>
<br/>
<font color='#A9E2F3'>§6 Support</font><br/>
- Support gibt es NUR im TS. Je nach Gebiet sind entweder die Admins oder der Polizeichef dafür zuständig<br/>

<br/>
== Zivilisten ======================================
<br/><br/>
<font color='#A9E2F3'>§1 Das Töten eines Medics</font><br/>
- wird als Kriegshandlung gewertet und mit 20.000$ beschtraft<br/>
<font color='#A9E2F3'>WICHTIG:</font> Medics dürfen nicht <font color='#FF0000'>beschossen</font> werden!
<font color='#A9E2F3'>WICHTIG:</font> Medics sind unparteiisch <font color='#FF0000'>und dürfen</font> von allesn seiten angefordert werden!

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
Fahrzeuge: -Ifrit -Rebellenoffroad -Jegliche Einsatzfahrzeuge<br/>
Waffen: -Lynx -Katiba -Rahim -Jegliche Polizeiwaffen<br/>
Gegenstände: -Schildkrötenfleisch -Marihuana -Kokain -Heroin<br/>
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
- Das Überfliegen von Städten unterhalb von 200m ist verboten.<br/>
- Das Landen von Helikoptern in Städten und auf Straßen ist verboten. Ausnahmeregelungen können durch die Polizei erteilt werden.<br/>
<br/>
<font color='#A9E2F3'>§7 Zusatz</font><br/>
- Die Gesetze von Jah City (Altis) sind verpflichtend.<br/>
- Bei Verstoß gegen die Gesetze wird nach Bußgeldkatalog bestraft. Im Wiederholungsfall droht eine Gefängnisstrafe.<br/>

<br/>
== Rebellen ========================================
<br/><br/>
<font color='#A9E2F3'>§1 Das Töten eines Medics</font><br/>
- wird als Kriegshandlung gewertet und mit 20.000$ beschtraft<br/>
<font color='#A9E2F3'>WICHTIG:</font> Medics dürfen nicht <font color='#FF0000'>beschossen</font> werden!
<font color='#A9E2F3'>WICHTIG:</font> Medics sind unparteiisch <font color='#FF0000'>und dürfen</font> von allesn seiten angefordert werden!

<font color='#A9E2F3'>§1 Raub, Diebstahl etc. (Event)</font><br/>
- Raub, Diebstahl etc. muss einen RP Hintergrund haben und sollte nicht zwangsweise mit dem Tot enden<br/>
<br/>
<font color='#A9E2F3'>§2 Rebellenverhalten</font><br/>
- Rebellen richten sich gegen den Staat und nicht gegen Zivilisten.<br/>

<br/>
== Polizisten ======================================
<br/><br/>


<font color='#A9E2F3'>§1 Allgemeines Verhalten</font><br/>
- Polizisten haben sich dauerhaft im TS aufzuhalten.<br/>
- Jeder Polizist hat sich an die geltenden Gesetze in Jah City (Altis) zu halten.<br/>
- Die Polizei ist Freund und Helfer und sollte sich auch entsprechend verhalten.<br/>
<br/>
<font color='#A9E2F3'>§2 Patroullien</font><br/>
- Jeder Polizist sollte im ihm zugeteilten Gebiet patroullieren.<br/>
- Patroullien dürfen in Fahrzeugen mit maximal 50 km/h durchgeführt werden.<br/>
- Bei Patrouillen dürfen Bürger ohne jeglichen Grund kontrolliert und durchsucht werden.<br/>
- Auf Patroulliengängen ist die Waffe stets gesenkt zu halten.<br/>
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
- Sind mindestens vier Polizisten im Dienst muss eingeschritten werden.<br/>
- Patroullierende Polizisten begeben sich ebenfalls umgehend zum Bankraub.<br/>
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
- Die Observierung durch Drohnen ist kein Campen.<br/>
<br/>
<font color='#A9E2F3'>§7 Beschlagnahmung</font><br/>
- Fahrzeuge dürfen nach mehr als 5 Minuten stillstand abgeschleppt werden.<br/>
- Fahrzeuge welche Ordnungsgemäß auf Parkplätzen abgestellt und unbeschädigt sind dürfen nicht abgeschleppt werden.<br/>
- Fahrzeuge welche für schwere Straftaten eingesetzt werden dürfen von der Polizei dauerhaft beschlagnahmt und zerstört werden.<br/>
- Illegale Fahrzeuge dürfen sofort dauerhaft beschlagnahmt werden.<br/>
<br/>
<font color='#A9E2F3'>§8 Festnahmen und Bußgelder</font><br/>
- Jeder Polizist ist angehalten, Bußgelder statt Gefängnisstrafen zu verhängen.<br/>
- Der Bußgeldkatalog ist hierbei bindend.<br/>
- Wiederholungstäter sind zu inhaftieren.<br/>
- Jeder Bürger hat das Recht zu erfahren, wieso er festgenommen wird.<br/>
- Festgenommene Personen sind schnellstmöglich zu bearbeiten und dürfen nicht länger als 3 Minuten ohne RP Hintergrund stehen gelassen werden.<br/>
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
			1. Du solltest mindestens 18 Jahre sein.<br/>
			2. RP und Spaß am ADAC Beruf.<br/>
			3. Einhaltung der Regeln.<br/>
			<br/>
			Beim verhängen von Servicegebühren muss nach der <br/>
			Preisliste des ADAC vorgegangen werden!<br/>
			Preisliste des ADAC vorgegangen werden!<br/>
			<br/>
			Es dürfen keine Beschlagnahmungen vorgenommen werden <br/>
			um eigene Fahrzeuge in die eigene Garage zu porten!<br/>
"
		]
	];	
	
	
//---------------------------------------------------//
	

	player createDiaryRecord ["medicrules",
		[
			"Regeln wenn du MEDIC spielst",
"
		<br/>
			WICHTIG! Redet mit den Spielern über DirectChat!<br/>
			Melde dich im Teamspeak (IP: 148.251.84.132)<br/>
			im MEDIC-Channel.
			<font color='#A9E2F3'>WICHTIG:</font> Medics sind unparteiisch <font color='#FF0000'>und dürfen</font> von allesn seiten angefordert werden!
			<br/><br/>
			1. Du solltest mindestens 18 Jahre sein.<br/>
			2. Keine Weiderbelebungen der selben Person innerhalb von 10min.<br/>
			<br/>
			Beim wiederbeleben von Personen erhälst du automatisch eine Gebühr von $150.<br/>
			Das ist dein Einkommen und darf nicht ohne Wunsch danach durchgeführt werden!<br/>
			<br/>

"
		]
	];	
	
//---------------------------------------------------//

	player createDiaryRecord ["policerules",
		[
			"Regeln wenn du COP spielst",
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
				    Art des Vergehens        Bußgeld
				Allgemein        	
				§1     Polizisten trollen         			100 $
				§2     Beleidigungen Zivilisten				60 $
				§3     Beleidigungen Polizisten 			90 $
				§4     Flucht aus Polizeikontrolle			1.000 $
				§5     Behinderung von Polizeiarbeit        40 $
				§6     Geiselnahme  30 min KNAST 		   +8.000 $
				§7     Bankraub  20 min KNAST 			   +6.000 $
				§8     Autodiebstahl      				    600 $
				§9     Diebstahl    Rucksäcke beklauen      50 $
				
				§11    Körperverletzung / Folter   	          300 $
				§12    Mord mit Fahrzeug  5 min./ pro Mord   +5.000 $
				§13    Mord        25 min. / pro Mord 	     +9.000 $
				§14    Führen von Illegaler Waffen            1.500 $
				§15    Waffenbesitz							  1.500 $							 
				§16    Drogenbesitz       					  2.000 $
				§17    Handel mit geschützten Arten Schildkrötenhandel     		  1.500 $
				§18    Drogenhandel       										  3.000 $
				§19    Drogenkonsum + Fahrt zur Entzugsklinik Krankenhaus 	 	  370 $
				§20    Erpressung    Absprache mit Einsatzleiter    KNAST 		 +4500$
				§21    Freiheitsberaubung    Zivis Fesseln    					  6.500 $
				§22    Einbruch   Häuser usw.   								  150 $    
				§23    Maske tragen   Einzug der Maske 					          50 $       
				§24     Laufen auf der Straße           						  10 $
				§25     Verkehr behindern    Auf Straße stehen        			  20 $
				§26     Fahrzeug behindern    Vor Autos stehen bleiben            25 $
				§27	   Betreten von Sperrgebieten    Polizei, ADAC, Medic usw.    30 $
				§28    Beihilfe zur Flucht        1/2 des Bußgeldes vom Straftäter zu Fuß
				§29    Raubüberfall  Die Geldmenge die geraubt wurde mal 0,5
				
				
								Fahrzeug    

								
				§1    Überhöhte Geschwindigkeit bis 20 km/h       80 $
				§2    Überhöhte Geschwindigkeit über 20 km/h      150 $
				§3    Fahren auf falsche Straßenseite          	  15 $
				§4    Verursachen eines Unfalls          		  120 $
				§5    Fahren ohne Licht             			  30 $
				§6    Fahren mit kaputten Autos  	              15 $
				§7    Fahren ohne Führerschein         		      300 $
				§8    Fahrerflucht          					  450 $
				§9    Führen von Illegaler Fahrzeuge              6.000 $
				§10    Trollen mit Fahrzeugen    Hupen            600 $
				
				
								Luftfahrzeuge    

								
				§1    Tiefer als 150 Meter über Städte           150 $
				§2    Landen in Städte          				 200 $
				§3    Führen von Illegaler Flugobjekte           6.000 $
				§4    Fliegen ohne Kollisionslichter             30 $
				§5    Fliegen ohne Fluglizenz       			 2.500 $
				
				
				Falls es sich nur um einen Versuch handelt, so ist nur die 1/2 der Strafe zu verhängen!            
				Bei Delikten die mit Knast bestraft werden ist eine angemessene Geldstrafe hinzuzufügen!            
				Bei Wiederholungstätern kann sich die Strafe pro Ticket jeweils um 50% steigern! <br/><br/>
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