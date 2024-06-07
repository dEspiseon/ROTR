/*
    Author - HoverGuy
    Website - https://northernimpulse.com
	
    Defines available traders
	
	class YourDealerClass - Used as a param for the call, basically the dealer you want to display
	{
		conditionToAccess - STRING - Condition that must return either true or false, if true the player will have access to the dealer
		
		interestedIn - ARRAY OF ARRAYS - Vehicles that the dealer is interested in buying
		|- 0 - STRING - Vehicle classname
		|- 1 - INTEGER - Vehicle sell price
	};
*/

class HG_DefaultDealer // HG_DefaultDealer is just a placeholder for testing purposes, you can delete it completely and make your own
{
	conditionToAccess = "true"; // Example: "(playerSide in [west,independent]) AND ((rank player) isEqualTo 'COLONEL')"
	
	interestedIn[] = 
	{
		{"C_M080apc1_civ_F",12000},
		{"C_mako_m30_civ_F",12500},
		{"MEOP_C_veh_LandVan_F",10000},
		{"MEOP_C_veh_LandPickup_F",10500},
		{"MEOP_C_veh_LandVanAmb_F",10500},
		{"MEOP_C_veh_CivTruck_F",14000},
		{"MEOP_C_veh_CivTruckFlat_F",14000},
		{"MEOP_veh_Htruck_Civ",19000},
		{"MEOP_veh_aerocar_Civ",18000},
		{"MEOP_veh_kadaraSh_civ",21000},
		{"MEOP_veh_kodiak_cargo",24000},
		{"OPTRE_Genet",25000},
		{"OPTRE_M12_CIV2",14000},
		{"OPTRE_M12_CIV",11500},
	    {"MEOP_SX3fighter_veh_cerbRed_F",47000},
		{"MEOP_SX4fighter_veh_cerbRed_F",44000},
		{"C_mako1_cerbRed_F",24000},
		{"C_makoAA_cerbRed_F",28000},
		{"C_M080apc2_service_cerbRed_F",26000},
		{"C_mako_m36_cerbRed_F",25000},
		{"O_M080apc3_merc_F",24000},
		{"MEOP_veh_kodiak3_merc_red",24500},
		{"MEOP_veh_kodiak_old_red",26000},
		{"MEOP_veh_kodiakArm_old_red",28000},
		{"MEOP_SX3fighter_veh_mercRed_F",48000},
		{"MEOP_TurHunterfighter_mercR_veh_F",39000},
		{"MEOP_veh_a61_MercRed",41000},
		{"C_mako_m32_band_red_F",25000},
		{"O_spectreBike_gang_F",17000},
		{"O_Tomkah_kro_F",36000},
		{"SC_VTOL_X41A_SE",50000},
		{"SC_VTOL_X42S_SE",52000},
		{"SC_Gator_FB_SE",54000},
		{"SC_Gator_TC_SE",57000},
		{"SC_Gator_TO_SE",55000},
		{"SC_SaurusAPC_SE",44000},
		{"SC_SaurusAPC_AA_SE",48000},
		{"SC_VTOL_X42_SE",56000},
		{"3AS_Z95_Republic",64000},
		{"3AS_ITT",29000},
		{"3AS_ITT_Logistic",27000},
		{"3AS_Patrol_LAAT_Imperial",54000},
		{"3AS_LAAT_Mk1_Imperial",59000},
		{"3AS_LAAT_Mk2_Imperial",69000},
		{"3AS_Nu_IMP_F",56000},
		{"3AS_Rho_IMP_F",59000},
		{"MTI_Barc",14000},
		{"MTI_arc_170_multiSeat",73000},
		{"3AS_VWing_Imperial",62000},
		{"3AS_Saber_M1_Imperial",45000},
		{"3AS_Saber_Super_Imperial",49000},
		{"3AS_ATTE_Imperial",55000},
		{"3AS_Rho_Crate_IMP_Transport",9000}
	};
};
