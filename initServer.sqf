/*
    Author - HoverGuy
    Website - https://northernimpulse.com
    Server initialization
*/

private _fortif_list = [
	["Land_MEOP_build_Turian_Barrier", 5],
	["Land_MEOP_build_Turian_WallSmall",10],
	["Land_MEOP_build_Turian_WallSmall45", 10],
	["Land_MEOP_build_Turian_WallGate", 10],
	["Land_MEOP_build_Turian_WallLight",10],
	["Land_MEOP_build_Turian_Wall",10],
	["Land_MEOP_build_Turian_WallGun",10],
	["Land_OPTRE_Industrial_Fence",10],
	["Land_MEOP_build_Turian_bunker1",25],
	["Land_MEOP_build_Turian_bunker2",25],
	["Land_MEOP_build_Turian_HQ",50],
	["Land_MEOP_build_Turian_Tower",15],
	["Land_OPTRE_watchtower_jungle",15],
	["CampEast_EP1",10],
	["Land_BarGate_F",10],
	["Land_MEOP_build_Turian_SmallLadders",10],
	["Land_PortableLight_double_F",5],
	["Land_ChairPlastic_F",5],
	["Land_Campfire",5],
	["OPTRE_holotable_sm",5],
	["Land_Camping_Light_F",5]
];
[west,       1000, _fortif_list] call acex_fortify_fnc_registerObjects;
[east,       1000, _fortif_list] call acex_fortify_fnc_registerObjects;
[resistance, 1000, _fortif_list] call acex_fortify_fnc_registerObjects;
sleep 1;

null = [DroidBOSSV1, 500, 4, 10] execVM "bossAi.sqf";
sleep 1;
null = [DroidBOSSV2, 500, 4, 10] execVM "bossAi.sqf";
sleep 1;
null = [MandoBOSS, 1200, 2, 20] execVM "bossAi.sqf";
sleep 1;
null = [SithBOSS, 500, 1, 10] execVM "bossAi.sqf";
sleep 1;
null = [MercBOSS, 400, 1, 10] execVM "bossAi.sqf";

[] execVM "HG\Setup\fn_serverInitialization.sqf";
