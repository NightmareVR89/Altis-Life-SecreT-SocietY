/*
@Version: 0.3
@Author: =IFD= Cryptonat
@Edited: 5/16/14

Description:
Saves the player's gear every 10 minutes.
*/
// Warum zur Hölle musste so etwas simples kopiert werden? O.o Naja, bleiben die Credits halt für ne einfache Schleife ...
while {true} do {
sleep 600;
[] call life_fnc_saveGear;
hint "Dein Gear wurde automatisch gespeichert."
};