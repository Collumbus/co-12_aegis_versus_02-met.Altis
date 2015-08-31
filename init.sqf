// FHQ TT:
call compile preProcessFileLineNumbers "scripts\fhqtt.sqf";
call compile preProcessFileLineNumbers "scripts\briefing.sqf";

[] execVM "aegis\init.sqf";

// Se for client, para aqui...
if (!isServer) exitWith {};

waitUntil { ([] call acre_api_fnc_isInitialized) };
sleep 1;
{
  _x addItem "ACRE_PRC152";
} forEach allPlayers;
