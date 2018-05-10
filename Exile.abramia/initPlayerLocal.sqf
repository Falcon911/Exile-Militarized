/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */
// Ducks of war mod
DOW_FN_ClaimTrophy = compileFinal preprocessFileLineNumbers "addons\dow_claimtrophy.sqf";
[] execVM "MostWanted_Client\MostWanted_Init.sqf";
 
if (!hasInterface || isServer) exitWith {};

// 98 NPCs
private _npcs = [
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "WhiteHead_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","sfp_gloves",[],["","","","","",""]], [711.4, 9788.82, 3.89163], [-0.338067, -0.941122, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "GreekHead_A3_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_orange",[],["","","","","",""]], [716.52, 9786.5, 3.8881], [-0.442268, -0.896883, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_18", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","sfp_gloves",[],["","","","","",""]], [664.014, 9747.69, 3.12972], [-0.0102178, 0.999948, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "GreekHead_A3_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [699.029, 9744.17, 3.73964], [-0.477629, 0.878562, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "WhiteHead_21", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [648.156, 9841.5, 3.82169], [0.397834, -0.917458, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_13", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_orange",[],["","","","","",""]], [701.003, 9755.02, 3.8988], [-0.934194, 0.356765, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "GreekHead_A3_07", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","sfp_gloves_black",[],["","","","","",""]], [612.155, 9765.4, 3.83513], [0.88985, 0.456253, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "Barklem", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [643.112, 9767.44, 3.80685], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "AfricanHead_02", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_yellow",[],["","","","","",""]], [637.377, 9754.88, 3.81209], [-0.218472, 0.975843, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "GreekHead_A3_07", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [620.77, 9783.12, 3.82726], [0.904925, -0.425571, 0], [0, 0, 1]],
["Exile_Guard_01", [], "", "WhiteHead_09", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","G_Combat",[],["","","","","",""]], [648.958, 9741.79, 3.88366], [0.29054, -0.956863, 0], [0, 0, 1]],
["Exile_Guard_03", [], "", "WhiteHead_14", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],["V_TacVestIR_blk",[]],[],"H_Bandanna_camo","G_Squares_Tinted",[],["","","","","",""]], [647.916, 9742.05, 3.86448], [0.265928, -0.963993, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_06", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [7177.38, 8416.32, 42.2552], [-0.8518, 0.523867, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_14", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [7163.17, 8416.07, 42.2662], [0.998245, -0.0592116, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_08", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","sfp_gloves_black",[],["","","","","",""]], [7122.64, 8487.2, 41.7114], [0.657014, -0.753878, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_CommunityCustoms2", "WhiteHead_12", [[],[],[],["U_B_PilotCoveralls",[]],[],[],"rhsusf_hgu56p_usa","sfp_gloves_black",[],["","","","","",""]], [7122.95, 8492.7, 41.7114], [0.712161, -0.702016, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","rhs_googles_orange",[],["","","","","",""]], [7139.11, 8487.08, 41.7114], [-0.668854, -0.743394, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_14", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [7148.66, 8497.62, 41.7114], [-0.0893086, -0.996004, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_16", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [7158.02, 8497.82, 41.7114], [-0.0371157, -0.999311, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_19", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [7167.98, 8497.44, 41.6314], [-0.111942, -0.993715, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_04", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [7176.42, 8497.33, 41.6314], [-0.026353, -0.999653, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "AfricanHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","rhs_googles_orange",[],["","","","","",""]], [7200.9, 8489.02, 41.4063], [-0.483039, -0.875599, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [7187.72, 8489.13, 41.6314], [0.548481, -0.836163, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_12", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","rhs_googles_orange",[],["","","","","",""]], [7145.87, 8424.51, 41.4819], [-0.685884, 0.727711, 0], [0, 0, 1]],
["Exile_Guard_01", [], "", "WhiteHead_10", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","sfp_gloves_black",[],["","","","","",""]], [7140.97, 8360.72, 41.7761], [-0.429405, -0.903112, 0], [0, 0, 1]],
["Exile_Guard_02", [], "", "WhiteHead_09", [["arifle_Mk20_GL_F","","","",[],[],""],[],[],["U_BG_Guerilla1_1",[]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","sfp_gloves_black",[],["","","","","",""]], [7276.03, 8495.46, 45.5038], [0.988675, -0.15007, 0], [0, 0, 1]],
["Exile_Guard_03", [], "", "WhiteHead_11", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],["V_TacVestIR_blk",[]],[],"H_Bandanna_camo","G_Squares_Tinted",[],["","","","","",""]], [7265.2, 8623.42, 62.7102], [0.157592, 0.987504, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "WhiteHead_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]], [7912.12, 4333.45, 2.73204], [-0.479552, -0.877513, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "AfricanHead_02", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [7920.76, 4328.54, 2.89431], [-0.753995, -0.65688, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "WhiteHead_17", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","sfp_gloves",[],["","","","","",""]], [7898.86, 4340.23, 2.74118], [-0.467399, -0.884047, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_17", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","sfp_gloves_black",[],["","","","","",""]], [7877.09, 4340.49, 4.5087], [0.920071, -0.391752, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_15", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","sfp_gloves_black",[],["","","","","",""]], [7871.23, 4336.8, 4.46001], [0.34424, 0.938882, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_15", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_yellow",[],["","","","","",""]], [7871.47, 4337.82, 7.34834], [0.975042, -0.222019, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_06", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [7880.83, 4342.86, 7.23516], [-0.123156, -0.992387, 0], [0, 0, 1]],
["Exile_Guard_03", [], "", "WhiteHead_16", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],["V_TacVestIR_blk",[]],[],"H_Bandanna_camo","G_Squares_Tinted",[],["","","","","",""]], [7890.38, 4344.46, 2.70564], [-0.321167, -0.947023, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "GreekHead_A3_09", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [7922.76, 4312.66, 3.86756], [-0.446371, -0.894848, 0], [0, 0, 1]],
["Exile_Guard_01", [], "", "WhiteHead_20", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","sfp_gloves",[],["","","","","",""]], [7964.44, 4290.5, 7.16744], [0.736015, -0.676965, 0], [0, 0, 1]],
["Exile_Guard_02", [], "", "WhiteHead_08", [["arifle_Mk20_GL_F","","","",[],[],""],[],[],["U_BG_Guerilla1_1",[]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","rhs_googles_yellow",[],["","","","","",""]], [7959.98, 4284.56, 7.15186], [0.999326, -0.0367073, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "Barklem", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","",[],["","","","","",""]], [7452.55, 1884.58, 2.27747], [0.972081, 0.234644, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [7456.52, 1880.34, 2.28556], [0.309662, 0.950847, 0], [0, 0, 1]],
["Exile_Guard_03", [], "", "AfricanHead_01", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],["V_TacVestIR_blk",[]],[],"H_Bandanna_camo","G_Squares_Tinted",[],["","","","","",""]], [7446.5, 1892.04, 2.3563], [-0.665958, -0.745989, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_18", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [7446.92, 1886.28, 1.31308], [0.374958, -0.927042, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_08", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [7498.59, 1895.54, 10.3438], [-0.277949, 0.960596, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "WhiteHead_07", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [7517.55, 1930.28, 9.0663], [0.725621, -0.688095, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_11", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_yellow",[],["","","","","",""]], [7522.91, 1931.24, 9.01125], [0.852895, 0.522083, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","sfp_gloves_black",[],["","","","","",""]], [7530.71, 1938.21, 9.64933], [0.613327, 0.789829, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "GreekHead_A3_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","rhs_googles_yellow",[],["","","","","",""]], [7524.51, 1898.09, 9.52383], [-0.995901, -0.0904486, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_12", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [7523.08, 1934.04, 12.3719], [0.715467, -0.698646, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_20", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [7503.77, 1892.97, 13.1835], [-0.239985, 0.970777, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","rhs_googles_yellow",[],["","","","","",""]], [7567.39, 1987.97, 7.94104], [-0.92299, 0.384825, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "Sturrock", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","sfp_gloves",[],["","","","","",""]], [7571.67, 1999.54, 7.88347], [-0.945757, 0.324875, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_07", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","sfp_gloves",[],["","","","","",""]], [7581.97, 2002.88, 7.88144], [0.243945, 0.969789, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_12", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [7583.76, 1998.34, 7.88826], [0.989016, -0.147805, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_09", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","sfp_gloves",[],["","","","","",""]], [7538.14, 1974.03, 9.31124], [0.893695, -0.448676, 0], [0, 0, 1]],
["Exile_Guard_01", [], "", "WhiteHead_21", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","",[],["","","","","",""]], [7638.89, 2029.78, 2.57244], [0.865658, -0.500636, 0], [0, 0, 1]],
["Exile_Guard_02", [], "", "Sturrock", [["arifle_Mk20_GL_F","","","",[],[],""],[],[],["U_BG_Guerilla1_1",[]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","",[],["","","","","",""]], [7642.01, 2013.39, 1.09906], [0.903172, -0.429279, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "WhiteHead_04", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","rhs_googles_orange",[],["","","","","",""]], [3037.68, 1652.42, 191.629], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_16", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","rhs_googles_yellow",[],["","","","","",""]], [3029.8, 1650.98, 191.783], [0.73878, 0.673946, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "Sturrock", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [2924.13, 1660.41, 191.551], [0.869732, 0.493524, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_06", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2919.36, 1669.36, 191.537], [0.866928, 0.498433, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "GreekHead_A3_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_orange",[],["","","","","",""]], [2917.21, 1689.38, 191.531], [0.530037, -0.847975, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "GreekHead_A3_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [2925.78, 1694.27, 191.527], [0.488461, -0.872586, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_15", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","sfp_gloves_black",[],["","","","","",""]], [2962, 1716.55, 194.144], [0.959887, 0.280386, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_06", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [2912.59, 1681.75, 191.531], [0.971536, 0.236893, 0], [0, 0, 1]],
["Exile_Guard_02", [], "", "WhiteHead_15", [["arifle_Mk20_GL_F","","","",[],[],""],[],[],["U_BG_Guerilla1_1",[]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","G_Tactical_Black",[],["","","","","",""]], [2964.95, 1720.9, 190.81], [0.942684, 0.333688, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "Sturrock", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [2944.53, 1703.69, 191.398], [0.50852, -0.86105, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [2935.62, 1699.18, 191.439], [0.468048, -0.883703, 0], [0, 0, 1]],
["Exile_Guard_01", [], "", "WhiteHead_20", [["srifle_DMR_03_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","sfp_gloves_black",[],["","","","","",""]], [2922.19, 1742.86, 194.332], [-0.824355, 0.566073, 0], [0, 0, 1]],
["Exile_Guard_03", [], "", "WhiteHead_01", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],["V_TacVestIR_blk",[]],[],"H_Bandanna_camo","G_Squares_Tinted",[],["","","","","",""]], [2924.9, 1756.33, 191.571], [-0.676248, -0.736674, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "GreekHead_A3_06", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [2996.45, 1713.07, 189.988], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_CommunityCustoms5", "WhiteHead_04", [[],[],[],["HAFM_NAVY_Uniform_BLU",[]],[],[],"HAFM_Cap_NAVY","G_Tactical_Black",[],["","","","","",""]], [6389.69, 5440.98, 2.07135], [-0.998249, -0.0591495, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "WhiteHead_16", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","rhs_googles_orange",[],["","","","","",""]], [6325.36, 5462.4, 2.14488], [-0.971481, -0.237118, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "AfricanHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","sfp_gloves_black",[],["","","","","",""]], [6325.65, 5448.11, 2.14447], [-0.999985, -0.00550123, 0], [0, 0, 1]],
["Exile_Trader_Diving", [], "Exile_Trader_Diving", "WhiteHead_15", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [6310.98, 5446.05, 2.31275], [-0.769938, -0.638119, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "WhiteHead_18", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [6200.19, 5535.73, 5.5829], [0.155852, -0.98778, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", [], "Exile_Trader_VehicleCustoms", "GreekHead_A3_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_yellow",[],["","","","","",""]], [6184.9, 5511.56, 7.1286], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_Vehicle", "WhiteHead_14", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [6177.08, 5511.29, 7.1282], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", [], "Exile_Trader_CommunityCustoms7", "WhiteHead_18", [[],[],[],["U_O_CombatUniform_ocamo",[]],[],[],"H_HelmetCrew_I","sfp_gloves_black",[],["","","","","",""]], [6159.58, 5532.41, 6.97284], [0.802003, -0.588604, -0.101671], [0.0834624, -0.0581147, 0.994815]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "GreekHead_A3_05", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [6243.46, 5443.39, 4.99528], [-0.916812, -0.399319, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_17", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","sfp_gloves",[],["","","","","",""]], [6226.91, 5442.29, 6.29049], [0.499762, 0.866163, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "AfricanHead_01", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [6195.63, 5480.74, 6.29715], [0.153551, -0.988141, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [6161.02, 5486.81, 6.29719], [-0.590445, 0.807078, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","sfp_gloves_black",[],["","","","","",""]], [6160.81, 5494.8, 6.39718], [-0.999865, -0.0164301, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_12", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","sfp_gloves_black",[],["","","","","",""]], [6164.82, 5501.97, 6.29718], [-0.998927, -0.0463234, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_04", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","rhs_googles_yellow",[],["","","","","",""]], [6150.01, 5463.74, 7.37893], [0.998152, 0.0607639, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_17", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [6185.65, 5480.62, 6.52715], [0.038555, -0.999256, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_Aircraft", "AfricanHead_03", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","sfp_gloves_black",[],["","","","","",""]], [9101.72, 6208.27, 54.1914], [-0.792878, 0.609381, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", [], "Exile_Trader_AircraftCustoms", "WhiteHead_21", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","sfp_gloves_black",[],["","","","","",""]], [9101.55, 6182.5, 54.5914], [-0.64428, 0.764789, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_CommunityCustoms2", "WhiteHead_12", [[],[],[],["U_B_PilotCoveralls",[]],[],[],"rhsusf_hgu56p_usa","rhs_googles_yellow",[],["","","","","",""]], [9103.07, 6197.9, 54.1914], [-0.87354, -0.486753, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", [], "Exile_Trader_CommunityCustoms3", "WhiteHead_05", [[],[],[],["U_O_PilotCoveralls",[]],[],[],"H_PilotHelmetFighter_O","rhs_googles_orange",[],["","","","","",""]], [9102.45, 6223.8, 54.1609], [-0.999939, -0.0110652, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "GreekHead_A3_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [8999.47, 6165.49, 54.0104], [0.650867, 0.759192, 0], [0, 0, 1]],
//["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_16", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [8998.45, 6173.94, 54.01], [0.982797, 0.184691, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "GreekHead_A3_07", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","sfp_gloves_black",[],["","","","","",""]], [9024.83, 6178.17, 54.0104], [-0.849773, 0.527148, 0], [0, 0, 1]],
["Exile_Trader_Food", [], "Exile_Trader_Food", "WhiteHead_19", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","sfp_gloves_black",[],["","","","","",""]], [9015.32, 6167.43, 54.01], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Hardware", [], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [8988.92, 6189.57, 54.4566], [0.461733, 0.887019, 0], [0, 0, 1]],
["Exile_Trader_Office", [], "Exile_Trader_Office", "WhiteHead_16", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","rhs_googles_orange",[],["","","","","",""]], [8989.59, 6201.67, 54.4498], [-0.466975, -0.884271, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "AfricanHead_03", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","rhs_googles_orange",[],["","","","","",""]], [8933.03, 6235.95, 54.3214], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", [], "Exile_Trader_WasteDump", "AfricanHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [6360.15, 5490.1, 2.15913], [-0.999662, 0.025989, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;