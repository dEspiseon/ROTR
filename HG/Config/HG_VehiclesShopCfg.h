/*
    Author - HoverGuy
    Website - https://northernimpulse.com
	
    Defines available vehicle shops
	
	class YourShopClass - Used as a param for the call, basically the shop you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the shop
		
		class YourShopCategory - Shop category, can be whatever you want
		{
			displayName - STRING - Category display name
			vehicles - ARRAY OF ARRAYS - Shop content
			|- 0 - STRING - Classname
			|- 1 - INTEGER - Price
			|- 2 - STRING - Condition that must return either true or false, if true the vehicle appears in the list else no
			spawnPoints - ARRAY OF ARRAYS - Spawn positions (markers/positions)
			|- 0 - STRING - Display name in the dialog
			|- 1 - ARRAY OF MIXED - Markers/positions
		};
	};
*/

class HG_DefaultShop // HG_DefaultShop is just a placeholder for testing purposes, you can delete it completely and make your own
{
    conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
    class Civilian
	{
	    displayName = "$STR_HG_SHOP_CIVILIAN";
		vehicles[] =
		{
		    {"C_M080apc1_civ_F",13000,"true"},
			{"C_mako_m30_civ_F",13500,"true"},
			{"MEOP_C_veh_LandVan_F",11000,"true"},
			{"MEOP_C_veh_LandPickup_F",11500,"true"},
			{"MEOP_C_veh_LandVanAmb_F",11500,"true"},
			{"MEOP_C_veh_CivTruck_F",15000,"true"},
			{"MEOP_C_veh_CivTruckFlat_F",15000,"true"},
			{"MEOP_veh_Htruck_Civ",20000,"true"},
			{"MEOP_veh_aerocar_Civ",19000,"true"},
			{"MEOP_veh_kadaraSh_civ",22000,"true"},
			{"MEOP_veh_kodiak_cargo",25000,"true"},
			{"OPTRE_Genet",26000,"true"},
			{"OPTRE_M12_CIV2",15000,"true"},
			{"OPTRE_M12_CIV",12500,"true"}
		};
	    spawnPoints[] =
		{
			{"$STR_HG_MARKER_1",{"civilian_vehicles_spawn_1"}}
		};
	};
	
	class Military
	{
	    displayName = "$STR_HG_SHOP_MILITARY";
		vehicles[] =
		{
		    {"MEOP_SX3fighter_veh_cerbRed_F",48000,"true"},
			{"MEOP_SX4fighter_veh_cerbRed_F",45000,"true"},
			{"C_mako1_cerbRed_F",25000,"true"},
			{"C_makoAA_cerbRed_F",29000,"true"},
			{"C_M080apc2_service_cerbRed_F",27000,"true"},
			{"C_mako_m36_cerbRed_F",26000,"true"},
			{"O_M080apc3_merc_F",25000,"true"},
			{"MEOP_veh_kodiak3_merc_red",25500,"true"},
			{"MEOP_veh_kodiak_old_red",27000,"true"},
			{"MEOP_veh_kodiakArm_old_red",29000,"true"},
			{"MEOP_SX3fighter_veh_mercRed_F",49000,"true"},
			{"MEOP_TurHunterfighter_mercR_veh_F",40000,"true"},
			{"MEOP_veh_a61_MercRed",42000,"true"},
			{"C_mako_m32_band_red_F",26000,"true"},
			{"O_spectreBike_gang_F",18000,"true"},
			{"O_Tomkah_kro_F",37000,"true"},
			{"SC_VTOL_X41A_SE",51000,"true"},
			{"SC_VTOL_X42S_SE",53000,"true"},
			{"SC_Gator_FB_SE",55000,"true"},
			{"SC_Gator_TC_SE",58000,"true"},
			{"SC_Gator_TO_SE",56000,"true"},
			{"SC_SaurusAPC_SE",45000,"true"},
			{"SC_SaurusAPC_AA_SE",49000,"true"},
			{"SC_VTOL_X42_SE",57000,"true"},
			{"3AS_Z95_Republic",65000,"true"},
			{"3AS_ITT",30000,"true"},
			{"3AS_ITT_Logistic",28000,"true"},
			{"3AS_Patrol_LAAT_Imperial",55000,"true"},
			{"3AS_LAAT_Mk1_Imperial",60000,"true"},
			{"3AS_LAAT_Mk2_Imperial",70000,"true"},
			{"3AS_Nu_IMP_F",57000,"true"},
			{"3AS_Rho_IMP_F",60000,"true"},
			{"MTI_Barc",15000,"true"},
			{"MTI_arc_170_multiSeat",74000,"true"},
			{"3AS_VWing_Imperial",63000,"true"},
			{"3AS_Saber_M1_Imperial",46000,"true"},
			{"3AS_Saber_Super_Imperial",50000,"true"},
			{"3AS_ATTE_Imperial",56000,"true"},
			{"3AS_Rho_Crate_IMP_Transport",10000,"true"}
	    };
		spawnPoints[] =
		{
			{"$STR_HG_MARKER_2",{"military_vehicles_spawn_1"}}
		};
	};
};
