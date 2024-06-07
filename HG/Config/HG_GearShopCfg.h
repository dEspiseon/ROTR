/*
    Author - HoverGuy
    Website - https://northernimpulse.com
	
    Defines available gear shops
	
	class YourShopClass - Used as a param for the call, basically the shop you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the shop
		
		class ShopCategory - Shop category, can only be Glasses/Headgear/Uniform/Vest/Backpack/MissileLauncher/RocketLauncher/Handgun/AssaultRifle/MachineGun/SubmachineGun/SniperRifle
		{
			content - ARRAY OF ARRAYS - Shop content
			|- 0 - STRING - Classname
			|- 1 - INTEGER - Price
			|- 2 - STRING - Condition that must return either true or false, if true the item appears in the list else no
		};
	};
*/

class HG_DefaultShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	/*class Glasses
	{
		displayName = "$STR_HG_SHOP_FACEWEARS";
		content[] =
		{
			
		};
	};*/
	
	/*class Headgear
	{
		displayName = "$STR_HG_SHOP_HEADGEAR";
		content[] =
		{
			
	    };
	};*/
	
	/*class Uniform
	{
		displayName = "$STR_HG_SHOP_UNIFORMS";
		content[] =
		{
		    {"U_B_FullGhillie_ard",150,"true"}
		};
	};*/
	
	/*class Vest
	{
		displayName = "$STR_HG_SHOP_VESTS";
		content[] =
		{
		    {"V_PlateCarrierGL_mtp",500,"true"}
		};
	};*/
	
	class Backpack
	{
		displayName = "$STR_HG_SHOP_BACKPACKS";
		content[] =
		{
			{"JLTS_Clone_belt_bag",350,"true"},
			{"JLTS_Clone_ARC_backpack",890,"true"},
			{"JLTS_Clone_backpack_RTO",1100,"true"},
			{"JLTS_Clone_RTO_pack",970,"true"},
			{"JLTS_Clone_backpack",750,"true"},
			{"JLTS_Clone_backpack_medic",850,"true"},
			{"JLTS_Clone_backpack_s",750,"true"},
			{"Aux212_B_Katarn_Backpack",1050,"true"},
			{"SEA_Backpack_Heavy",2300,"true"},
			{"SWOP_B_BlackBackpack_Base",890,"true"},
			{"SWOP_B_BrownBackpack_Base",890,"true"},
			{"SWOP_B_CloudBackpack_Base",890,"true"},
			{"ls_mandalorian_standard_backpack",900,"true"},
			{"ls_mandalorian_light_backpack",600,"true"},
			{"ls_mandalorian_heavy_backpack",1500,"true"},
			{"ls_mandalorian_rto_backpack",1100,"true"},
			{"ls_mandalorian_medic_backpack",1000,"true"},
			{"ls_mandalorian_demo_backpack",900,"true"},
			{"JLTS_UAV_prowler_gar_backpack",3400,"true"},
			{"212th_UAV_ATK_bag",5100,"true"},
			{"212th_UAV_bag",3600,"true"},
			{"JLTS_portable_shield_gar_backpack",8100,"true"},
			{"Aux212_JLTS_JT12_Jetpack",27900,"true"},
			{"212th_JLTS_MCJP_AB",26900,"true"},
			{"212th_JLTS_MCJP_Charger",28000,"true"},
			{"212th_JLTS_MCJP_Jungle",26900,"true"},
			{"212th_JLTS_MCJP_ABMEDIC",26900,"true"},
			{"212th_JLTS_MCJP_Night",26900,"true"},
			{"212th_JLTS_MCJP_Woodland",26900,"true"},
			{"212th_JLTS_MCJP_Arctic",26900,"true"},
			{"212th_JLTS_MCJP_Arid",26900,"true"},
			{"212th_JLTS_MCJP_Desert",26900,"true"},
			{"212th_JLTS_MCJP_Geonosis",26900,"true"},
			{"LST_Mando_Jet_Base",26900,"true"},
			{"ASN1K_JT_Mando",26900,"true"},
			{"JLTS_Clone_jumppack_JT12",26900,"true"},
			{"3as_JT12",50000,"true"}
		};
	};
	
	class MissileLauncher
	{
		displayName = "$STR_HG_SHOP_MISSILE_LAUNCHER";
		content[] =
		{
			{"SWLW_E60R_AA",13200,"true"},
			{"ls_weapon_aa_plx1",13200,"true"}
		};
	};
	
	class RocketLauncher
	{
		displayName = "$STR_HG_SHOP_ROCKET_LAUNCHER";
		content[] =
		{
			{"Aux212_E60R_AT_Launcher",8700,"true"},
			{"Aux212_HRPS6_AT_Launcher",9100,"true"},
			{"212th_RPS6",7600,"true"},
			{"212th_3AS_RPS6_F",3200,"true"},
			{"212th_3AS_RPS6_G",4600,"true"},
			{"Aux212_LRPS6_AT_Launcher",8700,"true"},
			{"3AS_PLX1_F",11800,"true"}
		};
	};
	
	class Handgun
	{
		displayName = "$STR_HG_SHOP_HANDGUN";
		content[] =
		{
			{"Aux212_3AS_DC15SA",1125,"true"},
			{"212th_spistol_DP23_F",2300,"true"},
			{"3AS_DC17S_F",1250,"true"},
			{"3AS_DC17STest_F",1324,"true"},
			{"DymekBlasterPistol_F",1230,"true"},
			{"3AS_RK3",1159,"true"},
			{"3AS_S5_f",1430,"true"},
			{"3AS_SE14R",1325,"true"},
			{"Aux501_Weaps_DC17",1270,"true"},
			{"Aux501_Weaps_DC17A",1340,"true"},
			{"Aux501_Weaps_RG4D",1233,"true"},
			{"Aux501_Weaps_Westar35SA",1780,"true"},
			{"MTI_DC15SA",1243,"true"},
			{"MTI_DC17s",1256,"true"},
			{"MTI_DC17s_ARC",1430,"true"},
			{"MTI_DC17s_dual",2100,"true"},
			{"MTI_DC17sgf",1540,"true"},
			{"MTI_DC19SA",1367,"true"},
			{"SWOP_A280CFEBlasterPistol",1213,"true"},
			{"SWOP_a180Pistol",1356,"true"},
			{"LFP_AR73",1233,"true"},
			{"SWOP_DC15_sh",3590,"true"},
			{"ls_weapon_dualDC17_secondary",2050,"true"},
			{"LFP_dc17arc_Dual",2500,"true"},
			{"SWOP_DL18Pistol",1340,"true"},
			{"SWOP_DL44Pistol",1255,"true"},
			{"SWOP_DT12Pistol",1255,"true"},
			{"SWOP_DT29Pistol",1345,"true"},
			{"swop_f11d_sh",2150,"true"},
			{"SWOP_GLIE44",1322,"true"},
			{"SWOP_K16Pistol",1492,"true"},
			{"JLTS_RG4D",1265,"true"},
			{"SWOP_rg4dPistol",1365,"true"},
			{"SWLW_RG4D",1335,"true"},
			{"SWOP_rk3",1285,"true"},
			{"swop_ScoutPistol",1395,"true"},
			{"swop_SE14cPistol",1285,"true"},
			{"swop_SE44Pistol",1775,"true"},
			{"swop_SE44cPistol",1325,"true"},
			{"LFP_Westar_35",1995,"true"},
			{"LFP_Westar_35BO",1895,"true"},
			{"SWOP_WESTAR34Pistol",1785,"true"},
			{"SWOP_Westar35Pistol",1905,"true"},
			{"SWLW_Westar35SA",1975,"true"},
			{"ls_weapon_westar35sa_secondary",1745,"true"},
			{"SWOP_x8Pistol",1325,"true"}
		};
	};
	
	class AssaultRifle
	{
		displayName = "Винтовки";
		content[] =
		{
			{"212th_3AS_DC15A",4544,"true"},
			{"212th_arifle_DC15A_F",5840,"true"},
			{"LFP_DC15A",4400,"true"},
			{"SWOP_DC15ABlasterRifle_mod1",4200,"true"},
			{"SWOP_DC15ABlasterRifle_mod0",4200,"true"},
			{"212th_3AS_DC15AGL",6544,"true"},
			{"212th_arifle_DC15GL_F",7844,"true"},
			{"MTI_DC15A_GL",6798,"true"},
			{"212th_3AS_DC15S",4134,"true"},
			{"212th_arifle_DC15S_F",5600,"true"},
			{"LFP_DC15s",7200,"true"},
			{"212th_arifle_DC15SGL_F",7600,"true"},
			{"212th_3AS_DC15C",4500,"true"},
			{"MTI_DC15C",4700,"true"},
			{"212th_3AS_DC15CGL",6500,"true"},
			{"MTI_DC15C_GL",6700,"true"},
			{"MTI_DC15LE",8225,"true"},
			{"212th_arifle_DC15LE_F",5200,"true"},
			{"SWLW_DC15AC",5596,"true"},
			{"SWLW_DC15BR",7600,"true"},
			{"212th_3AS_DC17M",6432,"true"},
			{"MTI_DC17M",7332,"true"},
			{"212th_arifle_VALKEN38A_F",9950,"true"},
			{"LFP_Valken38X",9550,"true"},
			{"212th_3AS_WestarM5",7440,"true"},
			{"MTI_WestarM5",7850,"true"},
			{"LFP_WestarM5",7200,"true"},
			{"LFP_WestarM5A",7470,"true"},
			{"LFP_WestarM5_GL",9470,"true"},
			{"MTI_WestarM5_GL",9850,"true"},
			{"212th_3AS_WestarM5GL",9440,"true"},
			{"SWLW_westar35c",6500,"true"},
			{"ls_weapon_westar35c_primary",7500,"true"},
			{"SWLW_Westar35S",7000,"true"},
			{"ls_weapon_westar35s_primary",8000,"true"},
			{"LFP_Westar45",7600,"true"},
			{"LFP_Westar55",8200,"true"},
			{"LFP_westarcarabine",7500,"true"},
			{"LFP_westarcarabinev2",8500,"true"},
			{"Aux212_JLTS_E5",5150,"true"},
			{"LFP_e5",5340,"true"},
			{"3AS_E11",6200,"true"},
			{"3AS_E11Stock",6250,"true"},
			{"SWOP_e11",6700,"true"},
			{"swop_e11b",7300,"true"},
			{"e11_dt",7350,"true"},
			{"3AS_E11_GL",8500,"true"},
			{"3AS_DymekBlasterRifle_F",6600,"true"},
			{"3AS_MPL_F",8900,"true"},
			{"Aux501_Weaps_RAMR",9900,"true"},
			{"Aux501_Weaps_RGL6",10200,"true"},
			{"MTI_ACPR",6100,"true"},
			{"MTI_Bowcaster",8400,"true"},
			{"MTI_EE2",6844,"true"},
			{"UMB14_F",6800,"true"},
			{"UMB36_F",7300,"true"},
			{"LFP_DC19",9100,"true"},
			{"MTI_DC19LE",9300,"true"},
			{"MTI_DC19SC",9350,"true"},
			{"MTI_EPL2",9100,"true"},
			{"MTI_RD4",9500,"true"},
			{"MTI_Verpine",9677,"true"},
			{"MTI_ZH73",7340,"true"},
			{"SWLW_ZH73",7120,"true"},
			{"SWOP_A180BlasterRifle",7800,"true"},
			{"SWOP_A280BlasterRifle",7912,"true"},
			{"SWOP_A280BlasterRifleClosedstock",7990,"true"},
			{"SWOP_A280A",8030,"true"},
			{"SWOP_A280C_MOD0",8035,"true"},
			{"SWOP_A280C_MOD1",8100,"true"},
			{"SWOP_A280CFEBlasterCarbine",8130,"true"},
			{"SWOP_A280CFEBlasterRifle",8160,"true"},
			{"SWOP_A300SBlasterRifle",8900,"true"},
			{"SW_cj9_BlasterRifle",7440,"true"},
			{"SWOP_CR2BlasterRifle",7350,"true"},
			{"SWOP_DH17BlasterRifle",4420,"true"},
			{"SWOP_E22",6155,"true"},
			{"SWOP_EE3BlasterRifle",6500,"true"},
			{"SWOP_EE4BlasterRifle",6140,"true"},
			{"SWOP_el16hfeBlasterRifle",6560,"true"},
			{"SWOP_el16hfemod0",6700,"true"},
			{"LFP_lw38m",6788,"true"},
			{"LFP_lw13",6580,"true"},
			{"LFP_LW8",6340,"true"},
			{"LFP_ma6",6800,"true"},
			{"SWOP_T21BlasterRifle",6960,"true"},
			{"SWOP_T21B_BlasterRifle",7100,"true"},
			{"LFP_ZTR94",7233,"true"}
		};
	};
	
	class MachineGun
	{
		displayName = "$STR_HG_SHOP_MACHINE_GUN";
		content[] =
		{
			{"212th_3AS_DC15L",8250,"true"},
			{"MTI_DC15L",8400,"true"},
			{"SWLW_DC15SAW",8450,"true"},
			{"212th_JLTS_Z6",9100,"true"},
			{"212th_arifle_z6_F",11200,"true"},
			{"MTI_Z6_Small",9900,"true"},
			{"Aux501_Weaps_Westar34L",8700,"true"},
			{"JLTS_E5C_stock",8250,"true"},
			{"Aux212_JLTS_E5C",8400,"true"},
			{"3AS_DLT19",10230,"true"},
			{"3AS_DLT19X",10580,"true"},
			{"MTI_LS150",9670,"true"},
			{"SWOP_DLT19BlasterRifle",9990,"true"},
			{"SWOP_rt97cBlasterRifle",8950,"true"},
			{"HeavyRepeater",10100,"true"},
			{"HeavyRepeater_Mod0",10400,"true"},
			{"SWLW_Z7",12120,"true"}
		};
	};
	
	class SubmachineGun
	{
		displayName = "Дробовики";
		content[] =
		{
			{"Aux212_JLTS_DP23",2300,"true"},
			{"MTI_DP23",2600,"true"},
			{"Aux501_Weaps_SBB3",2470,"true"},
			{"Aux501_Weaps_Drexl",2700,"true"},
			{"MTI_ACPA",2670,"true"},
			{"212th_EE2",2850,"true"},
			{"swop_CISShotgun",2460,"true"},
			{"SWLW_DP20",2280,"true"},
			{"swop_RepShotgun",3100,"true"},
			{"JLTS_SBB3",2780,"true"},
			{"SW_Scattergun",2890,"true"}
		};
	};
	
	class SniperRifle
	{
		displayName = "$STR_HG_SHOP_SNIPER_RIFLE";
		content[] =
		{
			{"SWLW_DC15X",11200,"true"},
			{"LFP_DC15X",11700,"true"},
			{"212th_DC15XM",13200,"true"},
			{"LFP_DC15xm",13100,"true"},
			{"LFP_dc15xs",12700,"true"},
			{"212th_3AS_Valken38X",9990,"true"},
			{"LFP_westarsniper",11200,"true"},
			{"3AS_E5S_F",11660,"true"},
			{"Aux212_JLTS_E5S",12100,"true"},
			{"LFP_e5s",11970,"true"},
			{"SWOP_X6BlasterRifle",11450,"true"},
			{"SWOP_E11SBlasterRifle",11900,"true"},
			{"3AS_DymekSniperRifle_F",11560,"true"},
			{"Aux501_Weaps_IQA11",12350,"true"},
			{"Aux501_Weaps_ZH73",11780,"true"},
			{"MTI_DW32S",12460,"true"},
			{"JLTS_DW32S",11970,"true"},
			{"SWOP_DLT19DBlasterRifle",11790,"true"},
			{"SWOP_DLT19XBlasterRifle",12630,"true"},
			{"SWOP_DTL20BlasterRifle",11970,"true"},
			{"SWOP_E17DBlasterRifle",11670,"true"},
			{"LFP_lw7",11460,"true"},
			{"LFP_T7",11780,"true"},
			{"SW_iondisruptor_BlasterRifle",15000,"true"},
			{"SWOP_TuskenRBlasterRifle",14600,"true"}
		};
	};
};

/*
["212th_3AS_DC15A","212th_arifle_DC15A_F","LFP_DC15A","SWOP_DC15ABlasterRifle_mod1","SWOP_DC15ABlasterRifle_mod0","212th_3AS_DC15AGL","212th_arifle_DC15GL_F","MTI_DC15A_GL","212th_3AS_DC15S","212th_arifle_DC15S_F","LFP_DC15s","212th_arifle_DC15SGL_F","212th_3AS_DC15C","MTI_DC15C","212th_3AS_DC15CGL","MTI_DC15C_GL","MTI_DC15LE","212th_arifle_DC15LE_F","SWLW_DC15AC","SWLW_DC15BR","212th_3AS_DC17M","MTI_DC17M","212th_arifle_VALKEN38A_F","LFP_Valken38X","212th_3AS_WestarM5","MTI_WestarM5","LFP_WestarM5","LFP_WestarM5A","LFP_WestarM5_GL","MTI_WestarM5_GL","212th_3AS_WestarM5GL","SWLW_westar35c","ls_weapon_westar35c_primary","SWLW_Westar35S","ls_weapon_westar35s_primary","LFP_Westar45","LFP_Westar55","LFP_westarcarabine","LFP_westarcarabinev2","Aux212_JLTS_E5","LFP_e5","3AS_E11","3AS_E11Stock","SWOP_e11","swop_e11b","e11_dt","3AS_E11_GL","3AS_DymekBlasterRifle_F","3AS_MPL_F","Aux501_Weaps_RAMR","Aux501_Weaps_RGL6","MTI_ACPR","MTI_Bowcaster","MTI_EE2","UMB14_F","UMB36_F","LFP_DC19","MTI_DC19LE","MTI_DC19SC","MTI_EPL2","MTI_RD4","MTI_Verpine","MTI_ZH73","SWLW_ZH73","SWOP_A180BlasterRifle","SWOP_A280BlasterRifle","SWOP_A280BlasterRifleClosedstock","SWOP_A280A","SWOP_A280C_MOD0","SWOP_A280C_MOD1","SWOP_A280CFEBlasterCarbine","SWOP_A280CFEBlasterRifle","SWOP_A300SBlasterRifle","SW_cj9_BlasterRifle","SWOP_CR2BlasterRifle","SWOP_DH17BlasterRifle","SWOP_E22","SWOP_EE3BlasterRifle","SWOP_EE4BlasterRifle","SWOP_el16hfeBlasterRifle","SWOP_el16hfemod0","LFP_lw38m","LFP_lw13","LFP_LW8","LFP_ma6","SWOP_T21BlasterRifle","SWOP_T21B_BlasterRifle","LFP_ZTR94"]

["Aux212_E60R_AT_Launcher","Aux212_HRPS6_AT_Launcher","212th_RPS6","212th_3AS_RPS6_F","212th_3AS_RPS6_G","Aux212_LRPS6_AT_Launcher","3AS_PLX1_F","SWLW_E60R_AA","ls_weapon_aa_plx1","SWLW_Z7"]

["Aux212_3AS_DC15SA","212th_spistol_DP23_F","3AS_DC17S_F","3AS_DC17STest_F","DymekBlasterPistol_F","3AS_RK3","3AS_S5_f","3AS_SE14R","Aux501_Weaps_DC17","Aux501_Weaps_DC17A","Aux501_Weaps_RG4D","Aux501_Weaps_Westar35SA","MTI_DC15SA","MTI_DC17s","MTI_DC17s_ARC","MTI_DC17s_dual","MTI_DC17sgf","MTI_DC19SA","SWOP_A280CFEBlasterPistol","SWOP_a180Pistol","LFP_AR73","SWOP_DC15_sh","ls_weapon_dualDC17_secondary","LFP_dc17arc_Dual","SWOP_DL18Pistol","SWOP_DL44Pistol","SWOP_DT12Pistol","SWOP_DT29Pistol","swop_f11d_sh","SWOP_GLIE44","SWOP_K16Pistol","JLTS_RG4D","SWOP_rg4dPistol","SWLW_RG4D","SWOP_rk3","swop_ScoutPistol","swop_SE14cPistol","swop_SE44Pistol","swop_SE44cPistol","LFP_Westar_35","LFP_Westar_35BO","SWOP_WESTAR34Pistol","SWOP_Westar35Pistol","SWLW_Westar35SA","ls_weapon_westar35sa_secondary","SWOP_x8Pistol"]

["JLTS_CloneNVG","JLTS_CloneNVG_spec","JLTS_CloneNVGRange","JLTS_CloneNVGRange_black","212th_JLTS_Clone_Helmet_NVG_Chip","212th_JLTS_Clone_Thermals_NVG_Chip","Aux212_JLTS_CloneNVG_Visor_Toggle","Aux212_JLTS_CloneNVG_Visor_Active","212th_JLTS_P2_Helmet_Rangefinder","Aux212_JLTS_P2_Helmet_Rangefinder_Orange"]

["JLTS_portable_shield_gar_backpack","JLTS_Clone_belt_bag","JLTS_Clone_ARC_backpack","JLTS_Clone_backpack_RTO","JLTS_Clone_RTO_pack","JLTS_Clone_backpack","JLTS_Clone_backpack_medic","JLTS_Clone_backpack_s","JLTS_UAV_prowler_gar_backpack","212th_UAV_ATK_bag","212th_UAV_bag","Aux212_JLTS_JT12_Jetpack","212th_JLTS_MCJP_AB","212th_JLTS_MCJP_Charger","212th_JLTS_MCJP_Jungle","212th_JLTS_MCJP_ABMEDIC","212th_JLTS_MCJP_Night","212th_JLTS_MCJP_Woodland","212th_JLTS_MCJP_Arctic","212th_JLTS_MCJP_Arid","212th_JLTS_MCJP_Desert","212th_JLTS_MCJP_Geonosis","Aux212_B_Katarn_Backpack","SEA_Backpack_Heavy","SWOP_B_WoodBackpackS_Base","SWOP_B_WoodBackpackSM_Base","SWOP_B_WoodBackpacksS_Base","SWOP_B_BlackBackpack_Base","SWOP_B_BrownBackpack_Base","SWOP_B_CloudBackpack_Base","ls_mandalorian_standard_backpack","ls_mandalorian_light_backpack","ls_mandalorian_heavy_backpack","LST_Mando_Jet_Base","LST_Mando_Jet_Base_2","ASN1K_JT_Mando","Aux501_Units_Mandalorian_Backpacks_Jumppack","ls_mandalorian_rto_backpack","ls_mandalorian_medic_backpack","ls_mandalorian_demo_backpack"]

*/