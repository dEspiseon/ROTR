/* -------------------------------------------------------------------------------
// In the init field of a AI UNIT on the EDEN Editor add:
// null = [this, 40, 2, 60] execVM "scripts\bossAi.sqf";
// Where: 
// "this" is the name of the unit that will have increased HP.
// "40" is the ammount of HP the Unit will have. (40 health means units can take ~4 shots).
// "2" is the amount of lives/revives the Unit will have. (0 lives disables the increased HP so 1 is minimum)
// "60" is the time in seconds the Ai unit will remain in Unconscious state.
// *******************************************************************************
// This script makes a specific Ai unit simulate having a larger/smaller healthpool than default Arma 3. 
// After depleting their healthpool the unit will go into incapacitated state instead of dying after taking fatal damage.
// After all its revives/lives are spent the unit will die normally (and permanently!).
// Additionally the script will:
// Makes it comunicate that it is "Down" via globalchat.
// Broadcasts the player/unit who attacks this special NPC via systemchat.
// Broadcasts the player/unit who kills this special NPC via systemchat. (After all its lives are spent).
// Removes All Actions from the NPC's dead body.(You should've protected your special NPC!)
// *******************************************************************************
// Script by Valmont
   ------------------------------------------------------------------------------- */

if (!isServer) exitWith {};
params [["_unit",objNull,[objNull]],["_hp_unit",40,[40]],["_lives_unit",2,[2]],["_downtime_unit",60,[0]]];

_hp_orig_unit = 1/_hp_unit;
_hp_curr_unit = _hp_orig_unit;
private _myOwner = owner _unit;

_unit setVariable ["unit_orig_hp",_hp_orig_unit,true];
_unit setVariable ["downtime_unit",_downtime_unit,true];
_unit setVariable ["lives_left_unit",_lives_unit,true];
_unit setVariable ["unit_dam_total",_hp_curr_unit,true];
_unit setVariable ["unit_dam_incr",_hp_curr_unit,true];

_unit removeAllEventHandlers "HandleDamage";

_unit addEventhandler ["HandleDamage",{
params ["_unit","_hitSelection","_damage","_source","_projectile"];

_orig_dam = (_unit getVariable "unit_orig_hp");
_lives_left = (_unit getVariable "lives_left_unit");

_curr_dam = (_unit getVariable "unit_dam_total") + (_unit getVariable "unit_dam_incr");
_unit setVariable ["unit_dam_total",_curr_dam,true];

if (_lives_left < 1) exitWith {_unit removeAllEventHandlers "HandleDamage";};

if ((_projectile=="") or ((_unit getVariable "unit_dam_total")<1)) then {0} else {
    _unit setUnconscious true;
    _unit setCaptive true;
    [_unit,"I am down! Send help!"] remoteExec ["globalChat" ,0];
    _unit disableAI "ANIM";
    _lives_left = _lives_left - 1;
    _unit setVariable ["lives_left_unit",_lives_left,true]; // Stores the new lives left.
    _unit setVariable ["unit_dam_total",_orig_dam,true]; // Ai back to full health.
    [_unit] Spawn {
    params ["_unit"];
    _downtime_seconds = (_unit getVariable "downtime_unit");
    sleep _downtime_seconds;
    _unit setDamage 0;
    _unit enableAI "ANIM";
    _unit setUnconscious false;
    sleep 1;
    _unit setUnitPos "UP";
    _unit setCaptive false;
    };
}
}];

_unit addEventHandler ["killed", {
params ["_unit", "_killer"];

0 = [[_unit, _killer],{
        params [["_unit",objNull,[objNull]],["_killer",objNull,[objNull]]];
        removeAllActions _unit;
        systemChat format ["%2 has killed %1",name _unit,name _killer];
    }] remoteExecCall ["bis_fnc_call", [0,-2] select isDedicated,false];
}];

[
    _unit, 
    "Revive NPC", 
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",  
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",   
    "(_this distance _target < 4) && (lifeState _target == ""INCAPACITATED"")",                                                      
    "_caller distance _target < 4",
    {},
    {hintsilent format ["Healing Progress :%1 / 24",_this select 4] }, 
    { 
    params ["_target", "_caller", "_actionId", "_arguments"];
    sleep 0.1;
    private _orig_dam = (_target getVariable "unit_orig_hp");
    private _myOwner = _arguments select 0;
    _target setDamage 0;
    0 = [_target, {
        params[ ["_object",objNull,[objNull]] ];
        _object enableAI "ANIM";
        _object setUnconscious false;
        _object setUnitPos "UP";
        _object setCaptive false;
    }] remoteExecCall ["bis_fnc_call", _myOwner];
    _target setVariable ["unit_dam_total",_orig_dam,true];
    0 = [_target,"Thanks, I feel fine again!"] remoteExec ["globalChat" ,[0,-2] select isDedicated,false];
    }, 
    {}, 
    [_myOwner], 
    10,
    1000, 
    false,
    true                                                                        
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,_unit];