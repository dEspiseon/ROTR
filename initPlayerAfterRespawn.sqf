
waituntil { sleep 0.1; !isnull player and {alive player} };
waituntil { sleep 0.1; !isNil 'ZPR_roles' };


//private _med       = [["MD"]]       call ZONT_fnc_checkrole;
//private _tv        = [["TV"]]       call ZONT_fnc_checkrole;

/*
player enableStamina !(_mechanicus || _inqusition);

player setUnitTrait ['engineer', _mechanicus];
*/
/*player setUnitTrait ['engineer', _tv];

if (_med) then {
  player setVariable ["ace_medical_medicclass", 2, true];
};

private _med = [["MED"]] call ZONT_fnc_checkRole;
private _eng = [["ENG"]] call ZONT_fnc_checkRole;


if (_med) then
{
 player setVariable ["ace_medical_medicclass", 2, true];
};

if (_eng) then
{
 player setVariable ["ACE_IsEngineer", 2, true];
};*/
