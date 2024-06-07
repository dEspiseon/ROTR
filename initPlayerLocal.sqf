/*
    Author - HoverGuy
    Website - https://northernimpulse.com
    Player initialization
*/

if(!hasInterface) exitWith {}; // If headless then exit

[] execVM "HG\Setup\fn_clientInitialization.sqf";



//Резервные слоты для ---пользователей силы----
while {true} do 
{
private ["_reserved_uids", "_uid"];
waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};
_reserved_uids = 
[
"ID",
"ID"
];
_uid = getPlayerUID player;
if ((player getVariable ["reserv", false])&& !(_uid in _reserved_uids)) then 
{
  titleText ["", "BLACK OUT"];
  hint "Вы находитесь в зарезервированном слота! Вы будете исключены через 15 секунд!";
  sleep 5;
  hint "Вы находитесь в зарезервированном слота! Вы будете исключены через 10 секунд!";
  sleep 5;
  hint "Вы находитесь в зарезервированном слота! Вы будете исключены через 5 секунд!";
  sleep 5;
  titleText ["", "BLACK IN"];
  endMission "LOSER";
      };  
};

