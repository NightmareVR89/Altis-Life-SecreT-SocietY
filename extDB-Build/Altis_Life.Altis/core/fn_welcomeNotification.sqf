/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Willkommen %1,",profileName] hintC
[
	"Manche Aktionen kannst du nur mit einem Druck auf die Action-Taste aktivieren.",
	"Mit der Zeit werden möglichst viele Aktionen mit Maus-Scrollen und Klick dadurch ersetzt!",
	"!!! Setze daher UNBEDINGT die 'Action 10'-Taste in der Konfiguration !!!",
	"Konfigurieren > Steuerung > Indiv. Steuerung > Aktionstaste 10",
	"Am besten Strg rechts",
	"Beispiele für Aktionen mit Action-Taste:",
	"Fischen",
	"Sachen aufheben",
	"Mit Spieler interagieren",
	"Mit Fahrzeugen interagieren"
];
