/*
ROS Sandstorm V3.6 by RickOShay

You may use ROSsandstorm as long as this header text is not removed and all original files are kept in tact.
Full credit must be given in any mission or mod that uses this or any other associated script or asset
dependency.

FEATURES:
Storm random scheduler for Listen/Dedicated servers, variable storm density, fixed or random storm length,
variable colour and wind strength, variable visibility, indoor outdoor & in vehicle sound attenuation, works
well day and night, protective eyewear check and damage, script auto adjusts number of sandstorms based on
available time to 24h00, allowance for existing mission time acceleration and wind settings, random prob of
certain hats blowing off, storm warning weather report, limited fps impact, works in SP and MP.

For a single sandstorm run the next line in a trigger or similar method to guarantee sandstorm run time.
Make sure trigger triggers at same time on all machines.

null = [duration in secs] execvm "ROS\scripts\ROSsandstorm.sqf";
null = [150] execvm "ROS\scripts\ROSsandstorm.sqf";
Min length 150 seconds.
Recommended storm lengths are 150 + (55 x n) = (150,205,260,315,370,425,480 etc.)

NOTE: If running on Dedicated server and calling sandstorm via a trigger (i.e. not using the scheduler):
Make sure trigger has server only box checked. In trigger On activation field put:
[[150],"ROS\scripts\ROSsandstorm.sqf"] remoteexec ["BIS_fnc_execVM"];

For random storm scheduling - listen or dedicated server use the ROS_Sandstorm_Scheduler.sqf file.
See script header for usage.
*/

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// The settings below will override any settings passed from scheduler if used to start sandstorms.
// Uncomment out the following lines to enable eyewear checks and or random chance of soft hats blowing off

//_eyewearCheck = true;
//_hatCheck = true;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Select Wind direction override //////////////////////////////////////////////////////////////////////////////
// Options are: "Current" or "Rand" or "X" value in compass range 0-360 in line below:
// ie: _SelectedWindDir = "Current"; _SelectedWindDir = "Rand"; _SelectedWindDir = "180";
// Uncomment out the following line to override:

//_SelectedWindDir = "Current";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////// *** DO NOT CHANGE ANYTHING BELOW THIS LINE *** DO NOT CHANGE ANYTHING BELOW THIS LINE *** ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
params ["_dur","_eyewearCheck","_hatCheck","_SelectedWindDir","_debug","_endtime"];
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Run only once
if (isnil "SStormRunning") then {SStormRunning = false};
if (SStormRunning) exitWith {};

SStormRunning = true;
publicVariable "SStormRunning";

if (isnil "_dur") then {_dur = 150};
if (isnil "_SelectedWindDir") then {_SelectedWindDir = "Current";};
if (isnil "_debug") then {_debug = false}; // change to true for local testing
// Save current wind
_origwind = wind;
_origWindir = windDir;
_origWindX = wind select 0;
_origWindY = wind select 1;
_origWindSpeed = sqrt (_origWindX^2 + _origWindY^2);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
_Wdir = windDir;

if (_SelectedWindDir == "Current") then {_Wdir = windDir};
if (_SelectedWindDir == "Rand") then {_Wdir = round (random 360)};
if (_SelectedWindDir != "Current" && _SelectedWindDir != "Rand") then {_Wdir = parseNumber _SelectedWindDir};
10 setWindDir _Wdir;
//if (_debug) then {hint format ["WindX:%1 WindY:%2 Windspeed:%3 WindDir:%4",_origwindX, _origwindY,_origWindSpeed,_origWindir]};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Save current volume
_originalVolume = soundVolume;
_endtime = time + _dur;
//if (_debug) then {hint format ["Endtime %1", _endtime]; sleep 3; hint "SS start"};

// Camshake
_shakepower = 1 + random 0.5;
_shakeduration = 1 + random 0.5;
_shakefreq = 3 + random 1;

// Add goggles and try to put into inventory - add default eyewear here
if (goggles player == "") then {
    if (player canAdd "G_Tactical_Clear") then {
        player addItem "G_Tactical_Clear";
        player unassignItem "G_Tactical_Clear";
    };
};

// Store and set time multiplier
_curtimemultiplier = timeMultiplier;
if (isServer) then {setTimeMultiplier 1};

// Remove ambient life
// enableEnvironment [false, false];


sleep 5;

// Start wind intro overlap ///////////////////////////////////////////////////////////////////////////
//if (_debug) then {hint "Start Wind intro sound";};

playsound "sswindintro";
3 fadeSound _originalVolume;

sleep 10;

// Increase wind velocity
[_debug] spawn {
    params ["_debug"];
    for "_i" from 1 to 2 step 0.3 do {
        _wSpeed = [wind, _i] call BIS_fnc_vectorMultiply;
        setWind [_wSpeed select 0, _wSpeed select 1, true];
        sleep 3;
        _wSpeedms = sqrt (((wind select 0) ^ 2) + ((wind select 1) ^ 2));
        _wSpeedkmh = _wSpeedms * 3.6;
        //if (_debug) then {hint format ["Wind speed increasing:\nm/s: %1\nkph: %2",_wSpeedms tofixed 2,_wSpeedkmh tofixed 2]};
    };
};

//if (_debug) then {hint format ["WindX:%1 WindY:%2 Windspeed:%3",wind select 0, wind select 1, sqrt (((wind select 0)^2) + ((wind select 1)^2))]};

sleep 15;

// Start leaves
//if (_debug) then {hint "Start leaves";};
_WindVectorX = wind select 0;
_WindVectorY = wind select 1;
_leaves_p  = "#particlesource" createVehicleLocal (getpos vehicle player);
_leaves_p attachto [vehicle player];
_leaves_p setParticleCircle [100, [0, 0, 0]];
_leaves_p setParticleParams [
["\A3\data_f\ParticleEffects\Hit_Leaves\Sticks", 1, 1, 1], "", "SpaceObject", 1, 27, [0,0,0], [_WindVectorX, _WindVectorY, 3], 2, 0.000001, 0.0, 0.1, [0.5 + random 0.5], [[0.68,0.68,0.68,1]], [1.5,1], 13, 13, "", "", vehicle player, 0, true ,1, [[0,0,0,0]]];
//setPartRand [lifeTime, position, moveVelocity, rotationVelocity, size, color, randomDirectionPeriod, randomDirectionIntensity, angle, bounceOnSurf]:
_leaves_p setParticleRandom [0, [10, 10, 7], [4, 4, 5], 2, 0.1, [0, 0, 0, 0.5], 1, 1, 0, 1];
_leaves_p setDropInterval 0.035;

// Start main Wind loop
//if (_debug) then {hint "Start Wind loop"; sleep 0.5;};
[_endtime, _originalVolume, _debug] execvm "ROS\scripts\ROSwindloop.sqf";

// Start fog
//if (_debug) then {hint "Start fog"};
70 setFog 0.25;

sleep 5;

// Add Color correction
//if (_debug) then {hint "Start color correction";};
_hndl1 = ppEffectCreate ["colorCorrections", 1550];
_hndl1 ppEffectEnable true;
_hndl1 ppEffectAdjust  [1.0, 1.0, 0.0,[0.2, 0.2, 1.0, 0.0],[0.4, 0.75, 1.0, 0.60],[0.5,0.3,1.0,-0.1]];
_hndl1 ppEffectCommit 15;

sleep 15;

// Add particle effect
//if (_debug) then {hint "Start particles";};

_obj = vehicle player;
_density = 0.01;
_colorCoef = 1;
_alpha = 0.3;
_size = 30;
_pos = getPosASL _obj;
_wx = wind select 0;
_wy = wind select 1;
_vel = [_wx/2.5,_wy/2.5,0]; // heavier slower
_color = [1.0 * _colorCoef, 0.92 * _colorCoef, 0.82 * _colorCoef];

if (sunOrMoon < 0.5) then {
    _size = 100;
} else {
    _size = 20;
};
if (sunOrMoon < 0.5) then {
    _color = [0.5 * _colorCoef, 0.46 * _colorCoef, 0.41 * _colorCoef];
} else {
    _color = [1.0 * _colorCoef, 0.92 * _colorCoef, 0.82 * _colorCoef];
};
if (sunOrMoon < 0.5) then {
    _alpha = 0.5 + random 0.2;
} else {
    _alpha = 0.3 + random 0.4;
};
_rvel = (abs (wind select 0) + abs (wind select 1))/1.5;
_particles = "#particlesource" createVehicleLocal _pos;
_particles setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8, 0], "", "Billboard", 1, 10, [0, 0, 0], _vel, _rvel, 1.275, 1, 1, [_size], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 1, "", "", _obj];
_particles setParticleRandom [3, [100 + (random 8), 100 + (random 10), 20], [2, 2, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
_particles setParticleCircle [0.1, [0,0,0]];
_particles setDropInterval _density;

sleep 5;

//rain and lightings on
0 setOvercast 1;
00 setLightnings 1;
00 setRain 1;
forceWeatherChange;

sleep 10;

//lightnings

h = [] spawn {
	private _fncLightning = {
		params [
			["_centre", position player, [[]]],
			["_radius", 300, [0]],
			["_dir", random 360, [0]]
		];
		private _pos = _centre getPos [_radius, _dir];
		private _bolt = createVehicle ["LightningBolt", _pos, [], 0, "NONE"];
		_bolt setPosATL _pos;
		_bolt setDamage 1;

		private _light = "#lightpoint" createVehiclelocal _pos;
		_light setPosATL (_pos vectorAdd [0,0,10]);
		_light setLightDayLight true;
		_light setLightBrightness 300;
		_light setLightAmbient [0.05, 0.05, 0.1];
		_light setlightcolor [1, 1, 2];

		sleep 0.1;
		_light setLightBrightness 0;
		sleep (random 0.1);

		private _lightning = (selectRandom ["lightning1_F","lightning2_F"]) createVehiclelocal [100,100,100];
		_lightning setdir _dir;
		_lightning setpos _pos;

		for "_i" from 0 to (3 + random 1) do {
			private _time = time + 0.1;
			_light setLightBrightness (100 + random 100);
			waituntil {
				time > _time
			};
		};

		deletevehicle _lightning;
		deletevehicle _light;
	};
	
	 _timeOut = time + 500;
    while {time < _timeOut} do {
        _intensity = 2 + round (random 3);
        for "_i" from 1 to _intensity do {
            [position player, (random 500) + 300] call _fncLightning;
        };
        sleep 2 + (random 2);
	};
};

While {time <= _endtime} do {
    // Switch off particles if flying
    if (!(isTouchingGround vehicle player) or !(isTouchingGround player)) then {
        _particles setDropInterval 0;
    } else {
        _particles setDropInterval _density;
    };
    if (sunOrMoon < 0.5) then {
        _ccbright = 0.6;
        _ccColbl = [0.4, 0.35, 0.25, 0.2 + random 0.6];
        _ccColco = [0.3 + random 0.2, 0.35, 0.25, 0.2 + random 0.6];
        _ccColde = [0.3  + random 0.2, 0.35, 0.25, 0.3 + random 0.5];
    } else {
        _ccbright = 0.6;
        _ccColbl = [0.8, 0.7, 0.5, 0.2 + random 0.6];
        _ccColco = [0.6 + random 0.4, 0.7, 0.5, 0.2 + random 0.6];
        _ccColde = [0.6  + random 0.4, 0.7 , 0.5, 0.3 + random 0.5];
    };
    _hndl1 ppEffectCommit 2 + (floor random 3);

    if (isServer) then {3 setFog (random 0.75);};
    sleep 4.5;
};

//if (_debug) then {hint "Endtime !";sleep 2;};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// FADE OUT EFFECTS ////////////////////////////////////////////////////////////////////////////////////////////////////////////
//if (_debug) then {hint "Fade out Sandstorm"; sleep 1;};

// Fade color correction to normal
//if (_debug) then {hint "Colour correction fade to normal"};
_hndl1 ppEffectAdjust [1, 1, 0,[ 0, 0, 0, 0],[ 1, 1, 1, 1],[ 0, 0, 0, 0]];
_hndl1 ppEffectCommit 60;

//rain and lightings off
0 setLightnings 0;
0 setRain 0.2;
0 setOvercast 0.4;
forceWeatherChange;

sleep 10;

// Remove Fog
//if (_debug) then {hint "Remove fog"};
//force fog to 0
setTimeMultiplier 2;
if (isServer) then {30 setFog 0};

// Switch on life
//if (_debug) then {hint "Environment on"};
//enableEnvironment [true, true];

sleep 10;

// Remove _particles
//if (_debug) then {hint "Remove particles and fade wind"};
for "_i" from _density to 0 step -0.0001 do {
    _density = _density + _i;
    sleep 0.1;
};
deleteVehicle _particles;

// Remove leaves
//if (_debug) then {hint "Remove leaves and camshake"};
deletevehicle _leaves_p;

// Reduce wind
//if (_debug) then {hint "Reduce wind"};
_WindVectorX = wind select 0;
_WindVectorY = wind select 1;
_factor = 1;
while {vectorMagnitude wind > vectorMagnitude _origwind} do {
    _factor = _factor + 0.5;
    setWind [(_WindVectorX/_factor), (_WindVectorY/_factor), true];
    sleep 4;
};

sleep 10;

// Remove camshake
inBuilding = false;
inVehicle = false;
doorclosed = "";
nearestdoor = "";
enableCamShake false;

sleep 5;

// reset original sound volume
//if (_debug) then {hint "Reset original sound volume"};
5 fadeSound _originalVolume;

// Remove color correction
//if (_debug) then {hint "Delete color correction"};
_hndl1 ppEffectEnable false;
ppEffectDestroy _hndl1;

// Reset time multiplier to mission init settings
//if (_debug) then {hint "Time multiplier reset"};
if (isServer && _curtimemultiplier > 1) then {
    setTimeMultiplier _curtimemultiplier;
};

// Set wind to original wind setting
//if (_debug) then {hint "Reset original wind direction and speed"};
5 setWindDir _origWindir;
sleep 5;
setWind [_origWindX, _origWindY, true];

// SS END - FADE out length ///////////////////////////////////////////////////////////////////////

//_endtime = "";

SStormRunning = false;
publicVariable "SStormRunning";

//if (_debug) then {hint "Sandstorm End"};
