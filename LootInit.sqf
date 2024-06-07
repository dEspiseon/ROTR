if(isServer)then{

// Set probability of loot spawning 1-100%
_probability=15;

// Show loot position and type on map (Debugging)
_showLoot=false;

// Set Weapon loot: Primary weapons, secondary weapons, Sidearms.
weaponsLoot=	["212th_3AS_DC15A","212th_arifle_DC15A_F","LFP_DC15A","SWOP_DC15ABlasterRifle_mod1","SWOP_DC15ABlasterRifle_mod0","212th_3AS_DC15AGL","212th_arifle_DC15GL_F","MTI_DC15A_GL","212th_3AS_DC15S","212th_arifle_DC15S_F","LFP_DC15s","212th_arifle_DC15SGL_F","212th_3AS_DC15C","MTI_DC15C","212th_3AS_DC15CGL","MTI_DC15C_GL","MTI_DC15LE","212th_arifle_DC15LE_F","SWLW_DC15AC","SWLW_DC15BR","212th_3AS_DC17M","MTI_DC17M","212th_arifle_VALKEN38A_F","LFP_Valken38X","212th_3AS_WestarM5","MTI_WestarM5","LFP_WestarM5","LFP_WestarM5A","LFP_WestarM5_GL","MTI_WestarM5_GL","212th_3AS_WestarM5GL","SWLW_westar35c","ls_weapon_westar35c_primary","SWLW_Westar35S","ls_weapon_westar35s_primary","LFP_Westar45","LFP_Westar55","LFP_westarcarabine","LFP_westarcarabinev2","Aux212_JLTS_E5","LFP_e5","3AS_E11","3AS_E11Stock","SWOP_e11","swop_e11b","e11_dt","3AS_E11_GL","3AS_DymekBlasterRifle_F","3AS_MPL_F","Aux501_Weaps_RAMR","Aux501_Weaps_RGL6","MTI_ACPR","MTI_Bowcaster","MTI_EE2","UMB14_F","UMB36_F","LFP_DC19","MTI_DC19LE","MTI_DC19SC","MTI_EPL2","MTI_RD4","MTI_Verpine","MTI_ZH73","SWLW_ZH73","SWOP_A180BlasterRifle","SWOP_A280BlasterRifle","SWOP_A280BlasterRifleClosedstock","SWOP_A280A","SWOP_A280C_MOD0","SWOP_A280C_MOD1","SWOP_A280CFEBlasterCarbine","SWOP_A280CFEBlasterRifle","SWOP_A300SBlasterRifle","SW_cj9_BlasterRifle","SWOP_CR2BlasterRifle","SWOP_DH17BlasterRifle","SWOP_E22","SWOP_EE3BlasterRifle","SWOP_EE4BlasterRifle","SWOP_el16hfeBlasterRifle","SWOP_el16hfemod0","LFP_lw38m","LFP_lw13","LFP_LW8","LFP_ma6","SWOP_T21BlasterRifle","SWOP_T21B_BlasterRifle","LFP_ZTR94","Aux212_E60R_AT_Launcher","Aux212_HRPS6_AT_Launcher","212th_RPS6","212th_3AS_RPS6_F","212th_3AS_RPS6_G","Aux212_LRPS6_AT_Launcher","3AS_PLX1_F","SWLW_E60R_AA","ls_weapon_aa_plx1","SWLW_Z7","Aux212_3AS_DC15SA","212th_spistol_DP23_F","3AS_DC17S_F","3AS_DC17STest_F","DymekBlasterPistol_F","3AS_RK3","3AS_S5_f","3AS_SE14R","Aux501_Weaps_DC17","Aux501_Weaps_DC17A","Aux501_Weaps_RG4D","Aux501_Weaps_Westar35SA","MTI_DC15SA","MTI_DC17s","MTI_DC17s_ARC","MTI_DC17s_dual","MTI_DC17sgf","MTI_DC19SA","SWOP_A280CFEBlasterPistol","SWOP_a180Pistol","LFP_AR73","SWOP_DC15_sh","ls_weapon_dualDC17_secondary","LFP_dc17arc_Dual","SWOP_DL18Pistol","SWOP_DL44Pistol","SWOP_DT12Pistol","SWOP_DT29Pistol","swop_f11d_sh","SWOP_GLIE44","SWOP_K16Pistol","JLTS_RG4D","SWOP_rg4dPistol","SWLW_RG4D","SWOP_rk3","swop_ScoutPistol","swop_SE14cPistol","swop_SE44Pistol","swop_SE44cPistol","LFP_Westar_35","LFP_Westar_35BO","SWOP_WESTAR34Pistol","SWOP_Westar35Pistol","SWLW_Westar35SA","ls_weapon_westar35sa_secondary","SWOP_x8Pistol"];

// Set items: Weapon attachments, first-aid, Binoculars
itemsLoot=		["ACE_Chemlight_White","ACE_Chemlight_IR","ACE_Chemlight_HiYellow","ACE_Chemlight_HiRed","Aux212_Class_A_Thermal_Detonator","Aux212_Class_B_Thermal_Detonator","Aux212_Class_F_Thermal_Detonator","212th_HM1_SmokeBlue","212th_HM1_SmokeGreen","212th_HM1_SmokeRed","212th_HM1_SmokeWhite","MTI_EmergencyFlare","MTI_ThrowableCharge","ACE_HandFlare_Red","OPTRE_c7_remote_throwable_sticky_mag","ls_mag_classA_thermalDet","ls_mag_classB_thermalDet","ls_mag_classC_thermalDet","Aux212_7PrG_Proton_Charge","Aux212_X10_Thermal_Disruptor","Aux212_X3_Thermal_Disruptor","3AS_DetPack","EC01_RemoteMagazine","HX_AT_Mine_Mag","RTX_RemoteMagazine","MTI_BreachingCharge_Mag","MTI_SatchelCharge_Mag","C7_Remote_Mag","C12_Remote_Mag","M168_Remote_Mag","LFP_type_A_Remote_Mag","LFP_type_B_Remote_Mag","LFP_type_C_Remote_Mag","APERSMineDispenser_Mag","JLTS_explosive_emp_10_mag","JLTS_explosive_emp_50_mag","ACE_M26_Clacker","ACE_Clacker","Aux212_Remote_Detonator","MTI_Clacker","ACE_adenosine","ACE_epinephrine","LFP_item_bacta_bandage","kat_atropine","kat_amiodarone","ACE_painkillers","kat_CarbonateItem","kat_aatKit","kat_lidocaine","ACE_morphine","kat_naloxone","kat_nitroglycerin","kat_norepinephrine","kat_PainkillerItem","ACE_quikclot","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_elasticBandage","ACE_fieldDressing","kat_Pulseoximeter","kat_guedel","ACE_surgicalKit","kat_chestSeal","ACE_splint","kat_accuvac","DBA_Medical_Actibandage","kat_X_AED","DSA_Antidote","MTI_Inhaler","MTI_BactaSpray","MTI_Batroxobine","kat_plate","kat_Bubble_Wrap_Item","kat_BVM","kat_CaffeineItem","kat_clamp","MTI_Deraformine","DBA_Medical_Dermaseal_Patch","kat_etomidate","kat_IO_FAST","kat_fentanyl","kat_flumazenil","MTI_Glitteryl","kat_lorazepam","kat_ketamine","kat_IFAK","kat_nalbuphine","kat_MFAK","kat_ncdKit","MTI_Nevastrin8","kat_PenthroxItem","kat_PervitinItem","kat_pocketBVM","kat_oxygenTank_150_Item","kat_oxygenTank_300_Item","kat_retractor","kat_scalpel","kat_sealant","DBA_Medical_Spray_Bandage","MTI_Symoxin","kat_TXA","MTI_Vutalamine"];
// Set Clothing: Hats, Helmets, Uniforms
//clothesLoot=	["JLTS_CloneHelmetP2"];
// Set Vests: Any vests
//vestsLoot=		["SWLB_clone_cfr_armor"];
// Set Backpacks: Any packpacks
backpacksLoot=	["JLTS_CloneNVG","JLTS_CloneNVG_spec","JLTS_CloneNVGRange","JLTS_CloneNVGRange_black","212th_JLTS_Clone_Helmet_NVG_Chip","212th_JLTS_Clone_Thermals_NVG_Chip","Aux212_JLTS_CloneNVG_Visor_Toggle","Aux212_JLTS_CloneNVG_Visor_Active","212th_JLTS_P2_Helmet_Rangefinder","Aux212_JLTS_P2_Helmet_Rangefinder_Orange","JLTS_portable_shield_gar_backpack","JLTS_Clone_belt_bag","JLTS_Clone_backpack_RTO","JLTS_Clone_backpack","JLTS_Clone_backpack_medic","JLTS_Clone_backpack_s","SEA_Backpack_Heavy","SWOP_B_BlackBackpack_Base","SWOP_B_BrownBackpack_Base","SWOP_B_CloudBackpack_Base","ls_mandalorian_standard_backpack","ls_mandalorian_light_backpack","ls_mandalorian_heavy_backpack","ls_mandalorian_rto_backpack","ls_mandalorian_medic_backpack","ls_mandalorian_demo_backpack","ACE_Banana","ACE_Can_Franta","ACE_Can_Spirit","kss_bottle_big","kss_bottle_small","ACE_WaterBottle","kss_bread","kss_vodka","kss_pea","kss_mushrooms","kss_irp","ACE_MRE_CreamChickenSoup","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_CreamTomatoSoup","ACE_MRE_BeefStew","ACE_MRE_LambCurry","kss_caviar","kss_kilka","kss_soda_coke","kss_cocktail_patron","kss_sausage","kss_red_beans","kss_corn","kss_chicken","kss_losos","kss_soda_mdew","kss_cucumbers","kss_soda_pepsi","kss_beer_light","kss_steak","kss_soup_chicken","kss_soup_vegetable","kss_tomatoes","kss_tushenka_beef","kss_tushenka_pork","kss_beer_dark","kss_chips","kss_shproti","kss_soda_drpepper","kss_mre"];

// Exclude buildings from loot spawn. Use 'TYPEOF' to find building name
_exclusionList=	["Land_Pier_F","Land_Pier_small_F","Land_NavigLight","Land_LampHarbour_F"];

private ["_distance","_houseList"];
	_mkr=(_this select 0);
	_mkr setmarkerAlpha 0;
	_pos=markerpos _mkr;
		_mkrY= getmarkerSize _mkr select 0;
		_mkrX= getmarkerSize _mkr select 1;

 _distance=_mkrX;
	if (_mkrY > _mkrX) 
			then {
			_distance=_mkrY;
			};

 _houseList= _pos nearObjects ["House",_distance];
						
		{
	_house=_X;

	if (!(typeOf _house in _exclusionList)) 
			then {

		
 for "_n" from 0 to 50 do {
 
	_buildingPos=_house buildingpos _n;
		if (str _buildingPos == "[0,0,0]") exitwith {};
					
				if (_probability > random 100) 
					then {
				null=[_buildingPos,_showLoot] execVM "spawnloot.sqf";
						};	
					};
				};				
	}foreach _houseList;
	
};//ISSERVER